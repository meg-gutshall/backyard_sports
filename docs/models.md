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
- Attributes: `email:string`, `password`, `username:string`, `first_name:string`, `last_name:string`, `dob:date`
- Relationships:
  - Profile
  - Family (required if minor, optional if adult)

## Family

- When a parent is maintaining multiple children's accounts, this is the model that connects them all
- Relationships:
  - Profile (required for each Family minor)
  - User (required for each Family adult)

## Profile

- A profile is created for each user
- There are multiple types of profiles that inherit from this model
- Attributes: `first_name:string`, `last_name:string` (inherit from `User` model)
- Relationships:
  - User (optional if minor, required if adult)
  - Family (required if minor, optional if adult)

### Profile::Player

- A profile is created for each sport the user plays
- They sort the positions in order of which they want to play most to least
- Can have another Profile type
- Additional attributes: `position_ranking:string`, `dob:date` (inherit from `User` if it exists), `free_agent:boolean`
- Relationships:
  - User (optional if minor, required if adult)
  - Family (required if minor, optional if adult)
  - Sport
  - Position
  - League (optional)
  - Team (optional)

### Profile::Coach

- Must be an adult
- Can have another Profile type
- Additional attributes: `free_agent:boolean`
- Relationships:
  - User
  - Sport
  - League (optional)
  - Team (optional)
  - Family (optional)

### Profile::FamilyAdministrator

- Must be an adult
- Can have another Profile type
- Relationships:
  - User
  - Family

## Sport

- A list of sports available in the app
- Attributes: `name:string`, `num_players:integer`, `season:string`, `setting:string`, `scoring_method:string`
- Relationships:
  - Position
  - League

## Position

- A list of positions for each sport
- Attributes: `name:string`, `offensive:boolean`, `defensive:boolean`
- Relationships:
  - Sport

## League

- A list of rec leagues
- Can sort by sport, location, age range, etc.
- Attributes: `name:string`, `num_teams:integer`, `gender:string`, `age_range:string`, `location:string`
- Relationships:
  - Sport
  - Team

## Team

- Attributes: `name:string`, `num_players:integer`
- Relationships:
  - League
  - Player Profiles
  - Coach Profiles
