# Planning & Ideation - Models

## Users

- Generated through the devise gem
- They actually login and use the app
- Can be adults or minors
  - Parent of children in rec league (type: family administrator)
  - Children in rec league
    - Should parent permission be required for children to use the app?
  - Adult in rec league
  - Coach/organizer of rec league
- Attributes: `email`, `password`, `username`, `first_name`, `last_name`
- Relationships:
  - Player/Coach Profile (optional if minor, required if adult)
  - Family (optional)

## Family

- When a parent is maintaining multiple children's accounts, this is the model that connects them all
- Relationships:
  - Player Profile (optional)
  - User (optional)

## Player Profile

- A profile is created for each sport the user plays
- They sort the positions in order of which they want to play most to least
- Attributes: `sport`, `positions`, `ranking`
- Relationships:
  - User (optional if minor, required if adult)
  - Family (optional)
  - Sport
  - Position

## Sport

- A list of sports available in the app
- Attributes: `name`, `num_players`, `season`, `setting`, `scoring_method`
- Relationships:
  - Position
  - League

## Position

- A list of positions for each sport
- Attributes: `name`, `offensive`, `defensive`
- Relationships:
  - Sport

## League

- A list of rec leagues
- Can sort by sport, location, age range, etc.
- Attributes: `name`, `num_teams`, `gender`, `age_range`, `location`
- Relationships:
  - Sport
  - Team

## Team

- Attributes: `name`, `num_players`
- Relationships:
  - League
  - Player Profiles
  - Coach Profiles

## Coach Profile

- Relationships:
  - User
  - Sport
  - League
  - Team
  - Player Profile (optional)
