#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

echo "$($PSQL "TRUNCATE TABLE games, teams")"

# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # ignore first row
  if [[ $YEAR != 'year' ]] 
  then
    # insert into teams table
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")

    # insert winner
    INSERTED_WINNER=$($PSQL "INSERT INTO teams (name) VALUES ('$WINNER')")
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
      
    # insert opponent
    INSERTED_OPPONENT=$($PSQL "INSERT INTO teams (name) VALUES ('$OPPONENT')")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")

    # insert game
    echo "$($PSQL "INSERT INTO games(year, winner_id, opponent_id, winner_goals, opponent_goals, round) VALUES ($YEAR, $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS, '$ROUND')")"
  fi
done 