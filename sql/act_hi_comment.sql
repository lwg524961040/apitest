DROP TABLE IF EXISTS "act_hi_comment";

CREATE TABLE "act_hi_comment" (
  "ID_" varchar(64) NOT NULL,
  "TYPE_" varchar(255),
  "TIME_" timestamp NOT NULL,
  "USER_ID_" varchar(255),
  "TASK_ID_" varchar(64),
  "PROC_INST_ID_" varchar(64),
  "ACTION_" varchar(255),
  "MESSAGE_" varchar(4000),
  "FULL_MSG_" bytea,
  PRIMARY KEY ("ID_")
);

