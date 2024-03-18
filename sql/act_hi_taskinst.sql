DROP INDEX "ACT_IDX_HI_TASK_INST_PROCINST";

DROP TABLE IF EXISTS "act_hi_taskinst";

CREATE TABLE "act_hi_taskinst" (
  "ID_" varchar(64) NOT NULL,
  "PROC_DEF_ID_" varchar(64),
  "TASK_DEF_KEY_" varchar(255),
  "PROC_INST_ID_" varchar(64),
  "EXECUTION_ID_" varchar(64),
  "NAME_" varchar(255),
  "PARENT_TASK_ID_" varchar(64),
  "DESCRIPTION_" varchar(4000),
  "OWNER_" varchar(255),
  "ASSIGNEE_" varchar(255),
  "START_TIME_" timestamp NOT NULL,
  "CLAIM_TIME_" timestamp,
  "END_TIME_" timestamp,
  "DURATION_" int8,
  "DELETE_REASON_" varchar(4000),
  "PRIORITY_" int4,
  "DUE_DATE_" timestamp,
  "FORM_KEY_" varchar(255),
  "CATEGORY_" varchar(255),
  "TENANT_ID_" varchar(255),
  PRIMARY KEY ("ID_")
);
CREATE INDEX "ACT_IDX_HI_TASK_INST_PROCINST" ON "act_hi_taskinst" USING btree (
  "PROC_INST_ID_" ASC
);

