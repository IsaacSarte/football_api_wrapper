# Football API Wrapper

* See all available Football Leagues
* Check a specific Football League
* See Teams in a League per Season
* Check a specific Team details
* See all Standings of a League per season
* See all matches/fixtures of a specific League
* See live matches/fixtures of a specific League
* See what is happening in the Transfer market of a specific Player

## Cloning:
`git clone https://github.com/IsaacSarte/football_api_wrapper.git`

## After Cloning:
```
& bundle install
& rails db:create
& rails db:migrate
```

## Routes:

`/leagues` - all leagues
<br/>
`/leagues/{id}` - specific league
<br/><br/>
`/teams/leagues/{id}/{season}` - all teams in a league per season **(YYYY)**
<br/>
`/teams/{id}` - specific team
<br/><br/>
`/standings/leagues/{id}/{season}` - standings of a league per season **(YYYY)**
<br/><br/>
`/matches/leagues/{id}/{season}` - see all matches of a league per season **(YYYY)**
<br/>
`/matches/leagues/{id}/{season}/live/{live}` - see all live matches of a league per season **(YYYY)**
<br/><br/>
`/transfers/{player_id}` - see a player's transfer market history
