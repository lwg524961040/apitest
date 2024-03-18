DROP INDEX "ACT_IDX_HI_DETAIL_PROC_INST";
DROP INDEX "ACT_IDX_HI_DETAIL_ACT_INST";
DROP INDEX "ACT_IDX_HI_DETAIL_TIME";
DROP INDEX "ACT_IDX_HI_DETAIL_NAME";
DROP INDEX "ACT_IDX_HI_DETAIL_TASK_ID";

DROP TABLE IF EXISTS "act_hi_detail";

CREATE TABLE "act_hi_detail" (
  "ID_" varchar(64) NOT NULL,
  "TYPE_" varchar(255) NOT NULL,
  "PROC_INST_ID_" varchar(64),
  "EXECUTION_ID_" varchar(64),
  "TASK_ID_" varchar(64),
  "ACT_INST_ID_" varchar(64),
  "NAME_" varchar(255) NOT NULL,
  "VAR_TYPE_" varchar(255),
  "REV_" int4,
  "TIME_" timestamp NOT NULL,
  "BYTEARRAY_ID_" varchar(64),
  "DOUBLE_" float8,
  "LONG_" int8,
  "TEXT_" varchar(4000),
  "TEXT2_" varchar(4000),
  PRIMARY KEY ("ID_")
);
CREATE INDEX "ACT_IDX_HI_DETAIL_PROC_INST" ON "act_hi_detail" USING btree (
  "PROC_INST_ID_" ASC
);
CREATE INDEX "ACT_IDX_HI_DETAIL_ACT_INST" ON "act_hi_detail" USING btree (
  "ACT_INST_ID_" ASC
);
CREATE INDEX "ACT_IDX_HI_DETAIL_TIME" ON "act_hi_detail" USING btree (
  "TIME_" ASC
);
CREATE INDEX "ACT_IDX_HI_DETAIL_NAME" ON "act_hi_detail" USING btree (
  "NAME_" ASC
);
CREATE INDEX "ACT_IDX_HI_DETAIL_TASK_ID" ON "act_hi_detail" USING btree (
  "TASK_ID_" ASC
);

