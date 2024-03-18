DROP INDEX "ACT_FK_JOB_EXECUTION";
DROP INDEX "ACT_FK_JOB_PROCESS_INSTANCE";
DROP INDEX "ACT_FK_JOB_PROC_DEF";
DROP INDEX "ACT_FK_JOB_EXCEPTION";

DROP TABLE IF EXISTS "act_ru_job";

CREATE TABLE "act_ru_job" (
  "ID_" varchar(64) NOT NULL,
  "REV_" int4,
  "TYPE_" varchar(255) NOT NULL,
  "LOCK_EXP_TIME_" timestamp,
  "LOCK_OWNER_" varchar(255),
  "EXCLUSIVE_" int2,
  "EXECUTION_ID_" varchar(64),
  "PROCESS_INSTANCE_ID_" varchar(64),
  "PROC_DEF_ID_" varchar(64),
  "RETRIES_" int4,
  "EXCEPTION_STACK_ID_" varchar(64),
  "EXCEPTION_MSG_" varchar(4000),
  "DUEDATE_" timestamp,
  "REPEAT_" varchar(255),
  "HANDLER_TYPE_" varchar(255),
  "HANDLER_CFG_" varchar(4000),
  "TENANT_ID_" varchar(255),
  PRIMARY KEY ("ID_")
);
CREATE INDEX "ACT_FK_JOB_EXECUTION" ON "act_ru_job" USING btree (
  "EXECUTION_ID_" ASC
);
CREATE INDEX "ACT_FK_JOB_PROCESS_INSTANCE" ON "act_ru_job" USING btree (
  "PROCESS_INSTANCE_ID_" ASC
);
CREATE INDEX "ACT_FK_JOB_PROC_DEF" ON "act_ru_job" USING btree (
  "PROC_DEF_ID_" ASC
);
CREATE INDEX "ACT_FK_JOB_EXCEPTION" ON "act_ru_job" USING btree (
  "EXCEPTION_STACK_ID_" ASC
);

