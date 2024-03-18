DROP INDEX "ACT_UNIQ_INFO_PROCDEF";
DROP INDEX "ACT_IDX_INFO_PROCDEF";
DROP INDEX "ACT_FK_INFO_JSON_BA";

DROP TABLE IF EXISTS "act_procdef_info";

CREATE TABLE "act_procdef_info" (
  "ID_" varchar(64) NOT NULL,
  "PROC_DEF_ID_" varchar(64) NOT NULL,
  "REV_" int4,
  "INFO_JSON_ID_" varchar(64),
  PRIMARY KEY ("ID_")
);
CREATE UNIQUE INDEX "ACT_UNIQ_INFO_PROCDEF" ON "act_procdef_info" USING btree (
  "PROC_DEF_ID_" ASC
);
CREATE INDEX "ACT_IDX_INFO_PROCDEF" ON "act_procdef_info" USING btree (
  "PROC_DEF_ID_" ASC
);
CREATE INDEX "ACT_FK_INFO_JSON_BA" ON "act_procdef_info" USING btree (
  "INFO_JSON_ID_" ASC
);

