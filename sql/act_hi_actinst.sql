DROP INDEX "ACT_IDX_HI_ACT_INST_START";
DROP INDEX "ACT_IDX_HI_ACT_INST_END";
DROP INDEX "ACT_IDX_HI_ACT_INST_PROCINST";
DROP INDEX "ACT_IDX_HI_ACT_INST_EXEC";

DROP TABLE IF EXISTS "act_hi_actinst";

CREATE TABLE "act_hi_actinst" (
  "ID_" varchar(64) NOT NULL,
  "PROC_DEF_ID_" varchar(64) NOT NULL,
  "PROC_INST_ID_" varchar(64) NOT NULL,
  "EXECUTION_ID_" varchar(64) NOT NULL,
  "ACT_ID_" varchar(255) NOT NULL,
  "TASK_ID_" varchar(64),
  "CALL_PROC_INST_ID_" varchar(64),
  "ACT_NAME_" varchar(255),
  "ACT_TYPE_" varchar(255) NOT NULL,
  "ASSIGNEE_" varchar(255),
  "START_TIME_" timestamp NOT NULL,
  "END_TIME_" timestamp,
  "DURATION_" int8,
  "DELETE_REASON_" varchar(4000),
  "TENANT_ID_" varchar(255),
  PRIMARY KEY ("ID_")
);
CREATE INDEX "ACT_IDX_HI_ACT_INST_START" ON "act_hi_actinst" USING btree (
  "START_TIME_" ASC
);
CREATE INDEX "ACT_IDX_HI_ACT_INST_END" ON "act_hi_actinst" USING btree (
  "END_TIME_" ASC
);
CREATE INDEX "ACT_IDX_HI_ACT_INST_PROCINST" ON "act_hi_actinst" USING btree (
  "PROC_INST_ID_" ASC,
  "ACT_ID_" ASC
);
CREATE INDEX "ACT_IDX_HI_ACT_INST_EXEC" ON "act_hi_actinst" USING btree (
  "EXECUTION_ID_" ASC,
  "ACT_ID_" ASC
);

