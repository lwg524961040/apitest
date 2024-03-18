DROP INDEX "ACT_IDX_HI_PROCVAR_PROC_INST";
DROP INDEX "ACT_IDX_HI_PROCVAR_NAME_TYPE";
DROP INDEX "ACT_IDX_HI_PROCVAR_TASK_ID";

DROP TABLE IF EXISTS "act_hi_varinst";

CREATE TABLE "act_hi_varinst" (
  "ID_" varchar(64) NOT NULL,
  "PROC_INST_ID_" varchar(64),
  "EXECUTION_ID_" varchar(64),
  "TASK_ID_" varchar(64),
  "NAME_" varchar(255) NOT NULL,
  "VAR_TYPE_" varchar(100),
  "REV_" int4,
  "BYTEARRAY_ID_" varchar(64),
  "DOUBLE_" float8,
  "LONG_" int8,
  "TEXT_" varchar(4000),
  "TEXT2_" varchar(4000),
  "CREATE_TIME_" timestamp,
  "LAST_UPDATED_TIME_" timestamp,
  PRIMARY KEY ("ID_")
);
CREATE INDEX "ACT_IDX_HI_PROCVAR_PROC_INST" ON "act_hi_varinst" USING btree (
  "PROC_INST_ID_" ASC
);
CREATE INDEX "ACT_IDX_HI_PROCVAR_NAME_TYPE" ON "act_hi_varinst" USING btree (
  "NAME_" ASC,
  "VAR_TYPE_" ASC
);
CREATE INDEX "ACT_IDX_HI_PROCVAR_TASK_ID" ON "act_hi_varinst" USING btree (
  "TASK_ID_" ASC
);

