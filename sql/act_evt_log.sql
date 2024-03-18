DROP TABLE IF EXISTS "act_evt_log";

CREATE TABLE "act_evt_log" (
  "LOG_NR_" int8 NOT NULL,
  "TYPE_" varchar(64),
  "PROC_DEF_ID_" varchar(64),
  "PROC_INST_ID_" varchar(64),
  "EXECUTION_ID_" varchar(64),
  "TASK_ID_" varchar(64),
  "TIME_STAMP_" timestamp NOT NULL,
  "USER_ID_" varchar(255),
  "DATA_" bytea,
  "LOCK_OWNER_" varchar(255),
  "LOCK_TIME_" timestamp,
  "IS_PROCESSED_" int2,
  PRIMARY KEY ("LOG_NR_")
);

