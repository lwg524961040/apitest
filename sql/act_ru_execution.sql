ALTER TABLE "act_ru_execution" DROP CONSTRAINT "ACT_FK_EXE_PARENT";
ALTER TABLE "act_ru_execution" DROP CONSTRAINT "ACT_FK_EXE_PROCINST";
ALTER TABLE "act_ru_execution" DROP CONSTRAINT "ACT_FK_EXE_SUPER";

DROP INDEX "ACT_IDX_EXEC_BUSKEY";
DROP INDEX "ACT_IDC_EXEC_ROOT";
DROP INDEX "ACT_FK_EXE_PROCINST";
DROP INDEX "ACT_FK_EXE_PARENT";
DROP INDEX "ACT_FK_EXE_SUPER";
DROP INDEX "ACT_FK_EXE_PROCDEF";

DROP TABLE IF EXISTS "act_ru_execution";

CREATE TABLE "act_ru_execution" (
  "ID_" varchar(64) NOT NULL,
  "REV_" int4,
  "PROC_INST_ID_" varchar(64),
  "BUSINESS_KEY_" varchar(255),
  "PARENT_ID_" varchar(64),
  "PROC_DEF_ID_" varchar(64),
  "SUPER_EXEC_" varchar(64),
  "ROOT_PROC_INST_ID_" varchar(64),
  "ACT_ID_" varchar(255),
  "IS_ACTIVE_" int2,
  "IS_CONCURRENT_" int2,
  "IS_SCOPE_" int2,
  "IS_EVENT_SCOPE_" int2,
  "IS_MI_ROOT_" int2,
  "SUSPENSION_STATE_" int4,
  "CACHED_ENT_STATE_" int4,
  "TENANT_ID_" varchar(255),
  "NAME_" varchar(255),
  "START_TIME_" timestamp,
  "START_USER_ID_" varchar(255),
  "LOCK_TIME_" timestamp,
  "IS_COUNT_ENABLED_" int2,
  "EVT_SUBSCR_COUNT_" int4,
  "TASK_COUNT_" int4,
  "JOB_COUNT_" int4,
  "TIMER_JOB_COUNT_" int4,
  "SUSP_JOB_COUNT_" int4,
  "DEADLETTER_JOB_COUNT_" int4,
  "VAR_COUNT_" int4,
  "ID_LINK_COUNT_" int4,
  PRIMARY KEY ("ID_")
);
CREATE INDEX "ACT_IDX_EXEC_BUSKEY" ON "act_ru_execution" USING btree (
  "BUSINESS_KEY_" ASC
);
CREATE INDEX "ACT_IDC_EXEC_ROOT" ON "act_ru_execution" USING btree (
  "ROOT_PROC_INST_ID_" ASC
);
CREATE INDEX "ACT_FK_EXE_PROCINST" ON "act_ru_execution" USING btree (
  "PROC_INST_ID_" ASC
);
CREATE INDEX "ACT_FK_EXE_PARENT" ON "act_ru_execution" USING btree (
  "PARENT_ID_" ASC
);
CREATE INDEX "ACT_FK_EXE_SUPER" ON "act_ru_execution" USING btree (
  "SUPER_EXEC_" ASC
);
CREATE INDEX "ACT_FK_EXE_PROCDEF" ON "act_ru_execution" USING btree (
  "PROC_DEF_ID_" ASC
);

ALTER TABLE "act_ru_execution" ADD CONSTRAINT "ACT_FK_EXE_PARENT" FOREIGN KEY ("PARENT_ID_") REFERENCES "act_ru_execution" ("ID_");
ALTER TABLE "act_ru_execution" ADD CONSTRAINT "ACT_FK_EXE_PROCINST" FOREIGN KEY ("PROC_INST_ID_") REFERENCES "act_ru_execution" ("ID_");
ALTER TABLE "act_ru_execution" ADD CONSTRAINT "ACT_FK_EXE_SUPER" FOREIGN KEY ("SUPER_EXEC_") REFERENCES "act_ru_execution" ("ID_");

