DROP TABLE IF EXISTS "act_id_user";

CREATE TABLE "act_id_user" (
  "ID_" varchar(64) NOT NULL,
  "REV_" int4,
  "FIRST_" varchar(255),
  "LAST_" varchar(255),
  "EMAIL_" varchar(255),
  "PWD_" varchar(255),
  "PICTURE_ID_" varchar(64),
  PRIMARY KEY ("ID_")
);

