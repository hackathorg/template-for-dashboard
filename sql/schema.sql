
-- User table --

DROP TABLE users;		-- user table
CREATE TABLE users(
  user_id integer primary key,		-- unique user ID
  team_id integer,			-- team ID (one group per user)
  username varchar(20),			-- username
  description varchar(140),		-- description
  location varchar(140),
  is_mentor integer
);

-- Team table --

DROP TABLE teams;	 		-- house(group) table
CREATE TABLE teams(
  team_id integer primary key, 		-- unique house id
  owner_id integer, 			-- owners userid
  team_name varchar(20),		-- house name
  github varchar(60),
  location varchar(140),
  description varchar(140)
);

-- Challenges --

DROP TABLE challenges;
CREATE TABLE challenges(
  challenge_id integer primary key,
  title varchar(140),
  description varchar(280),
  resource varchar(140),
  prize varchar(140),
  languages varchar(140),
  challengetype integer
);

-- Challenge user relation --

DROP TABLE challengesdone;
CREATE TABLE challengesdone(
  challengesdone_id integer primary key,
  user_id integer,
  challenge_id integer
);

-- User messages --

DROP TABLE teammessages; 			-- comments on house group
CREATE TABLE teammessages(
  message_id integer primary key,	-- unique message ID
  team_id integer,			-- user id to
  user_id_from integer,			-- user id from
  message varchar(140), 		-- message
  seen boolean
);

-- Notifications --

DROP TABLE mentor_notify;		-- notifications for mentors
CREATE TABLE mentor_notify(
  mentor_notify_id integer primary key,	-- unique notification ID
  user_id_to integer,			-- user ID who notify is for
  user_id_from integer			-- user ID who sent notify
);

DROP TABLE team_notify;			-- notifications for team invites
CREATE TABLE team_notify(
  team_notify_id integer primary key,	-- unique notification ID
  user_id integer,			-- user ID who sent notify
  team_id_from integer,			-- team ID who sent notify
);

-- END --
