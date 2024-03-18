DROP TABLE IF EXISTS "act_hi_attachment";

CREATE TABLE "act_hi_attachment" (
  "ID_" varchar(64) NOT NULL,
  "REV_" int4,
  "USER_ID_" varchar(255),
  "NAME_" varchar(255),
  "DESCRIPTION_" varchar(4000),
  "TYPE_" varchar(255),
  "TASK_ID_" varchar(64),
  "PROC_INST_ID_" varchar(64),
  "URL_" varchar(4000),
  "CONTENT_ID_" varchar(64),
  "TIME_" timestamp,
  PRIMARY KEY ("ID_")
);

