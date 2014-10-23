-- GetActions [pkg1g#ent2g]
create table "GETACTIONS" (
   "OID"  integer  not null,
   "THEMATIC_AREA"  varchar(255),
   "ACTION_NAME"  varchar(255),
   "ACTION_ID"  integer,
   "WROWNERID"  integer,
  primary key ("OID")
);


-- GetUserCredits [pkg1g#ent3g]
create table "GETUSERCREDITS" (
   "OID"  integer  not null,
   "USER_EMAIL"  varchar(255),
   "CREDIT_AVAILABLE"  decimal(19,2),
   "CREDIT_SPENT"  decimal(19,2),
   "TOTAL_CREDIT"  decimal(19,2),
   "WROWNERID"  integer,
  primary key ("OID")
);


-- GetUserRewards [pkg1g#ent4g]
create table "GETUSERREWARDS" (
   "OID"  integer  not null,
   "REWARD_NAME"  varchar(255),
   "REWARD_ID"  integer,
   "NEEDED_POINTS"  decimal(19,2),
   "USER_EMAIL"  varchar(255),
   "WROWNERID"  integer,
  primary key ("OID")
);


-- RedeemUserReward [pkg1g#ent5g]
create table "REDEEMUSERREWARD" (
   "OID"  integer  not null,
   "USER_EMAIL"  varchar(255),
   "CREDITS_AVAILABLE"  decimal(19,2),
   "WROWNERID"  integer,
  primary key ("OID")
);


