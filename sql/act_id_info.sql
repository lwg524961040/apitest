DROP TABLE IF EXISTS "act_id_info";

CREATE TABLE "act_id_info" (
  "ID_" varchar(64) NOT NULL,
  "REV_" int4,
  "USER_ID_" varchar(64),
  "TYPE_" varchar(64),
  "KEY_" varchar(255),
  "VALUE_" varchar(255),
  "PASSWORD_" bytea,
  "PARENT_ID_" varchar(255),
  PRIMARY KEY ("ID_")
);

