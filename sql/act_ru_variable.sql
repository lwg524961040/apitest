DROP INDEX "ACT_IDX_VARIABLE_TASK_ID";
DROP INDEX "ACT_FK_VAR_EXE";
DROP INDEX "ACT_FK_VAR_PROCINST";
DROP INDEX "ACT_FK_VAR_BYTEARRAY";

DROP TABLE IF EXISTS "act_ru_variable";

CREATE TABLE "act_ru_variable" (
  "ID_" varchar(64) NOT NULL,
  "REV_" int4,
  "TYPE_" varchar(255) NOT NULL,
  "NAME_" varchar(255) NOT NULL,
  "EXECUTION_ID_" varchar(64),
  "PROC_INST_ID_" varchar(64),
  "TASK_ID_" varchar(64),
  "BYTEARRAY_ID_" varchar(64),
  "DOUBLE_" float8,
  "LONG_" int8,
  "TEXT_" varchar(4000),
  "TEXT2_" varchar(4000),
  PRIMARY KEY ("ID_")
);
CREATE INDEX "ACT_IDX_VARIABLE_TASK_ID" ON "act_ru_variable" USING btree (
  "TASK_ID_" ASC
);
CREATE INDEX "ACT_FK_VAR_EXE" ON "act_ru_variable" USING btree (
  "EXECUTION_ID_" ASC
);
CREATE INDEX "ACT_FK_VAR_PROCINST" ON "act_ru_variable" USING btree (
  "PROC_INST_ID_" ASC
);
CREATE INDEX "ACT_FK_VAR_BYTEARRAY" ON "act_ru_variable" USING btree (
  "BYTEARRAY_ID_" ASC
);

