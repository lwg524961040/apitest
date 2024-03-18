DROP INDEX "ACT_IDX_TASK_CREATE";
DROP INDEX "ACT_FK_TASK_EXE";
DROP INDEX "ACT_FK_TASK_PROCINST";
DROP INDEX "ACT_FK_TASK_PROCDEF";

DROP TABLE IF EXISTS "act_ru_task";

CREATE TABLE "act_ru_task" (
  "ID_" varchar(64) NOT NULL,
  "REV_" int4,
  "EXECUTION_ID_" varchar(64),
  "PROC_INST_ID_" varchar(64),
  "PROC_DEF_ID_" varchar(64),
  "NAME_" varchar(255),
  "PARENT_TASK_ID_" varchar(64),
  "DESCRIPTION_" varchar(4000),
  "TASK_DEF_KEY_" varchar(255),
  "OWNER_" varchar(255),
  "ASSIGNEE_" varchar(255),
  "DELEGATION_" varchar(64),
  "PRIORITY_" int4,
  "CREATE_TIME_" timestamp,
  "DUE_DATE_" timestamp,
  "CATEGORY_" varchar(255),
  "SUSPENSION_STATE_" int4,
  "TENANT_ID_" varchar(255),
  "FORM_KEY_" varchar(255),
  "CLAIM_TIME_" timestamp,
  PRIMARY KEY ("ID_")
);
CREATE INDEX "ACT_IDX_TASK_CREATE" ON "act_ru_task" USING btree (
  "CREATE_TIME_" ASC
);
CREATE INDEX "ACT_FK_TASK_EXE" ON "act_ru_task" USING btree (
  "EXECUTION_ID_" ASC
);
CREATE INDEX "ACT_FK_TASK_PROCINST" ON "act_ru_task" USING btree (
  "PROC_INST_ID_" ASC
);
CREATE INDEX "ACT_FK_TASK_PROCDEF" ON "act_ru_task" USING btree (
  "PROC_DEF_ID_" ASC
);

