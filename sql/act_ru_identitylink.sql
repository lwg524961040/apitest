DROP INDEX "ACT_IDX_IDENT_LNK_USER";
DROP INDEX "ACT_IDX_IDENT_LNK_GROUP";
DROP INDEX "ACT_IDX_ATHRZ_PROCEDEF";
DROP INDEX "ACT_FK_TSKASS_TASK";
DROP INDEX "ACT_FK_IDL_PROCINST";

DROP TABLE IF EXISTS "act_ru_identitylink";

CREATE TABLE "act_ru_identitylink" (
  "ID_" varchar(64) NOT NULL,
  "REV_" int4,
  "GROUP_ID_" varchar(255),
  "TYPE_" varchar(255),
  "USER_ID_" varchar(255),
  "TASK_ID_" varchar(64),
  "PROC_INST_ID_" varchar(64),
  "PROC_DEF_ID_" varchar(64),
  PRIMARY KEY ("ID_")
);
CREATE INDEX "ACT_IDX_IDENT_LNK_USER" ON "act_ru_identitylink" USING btree (
  "USER_ID_" ASC
);
CREATE INDEX "ACT_IDX_IDENT_LNK_GROUP" ON "act_ru_identitylink" USING btree (
  "GROUP_ID_" ASC
);
CREATE INDEX "ACT_IDX_ATHRZ_PROCEDEF" ON "act_ru_identitylink" USING btree (
  "PROC_DEF_ID_" ASC
);
CREATE INDEX "ACT_FK_TSKASS_TASK" ON "act_ru_identitylink" USING btree (
  "TASK_ID_" ASC
);
CREATE INDEX "ACT_FK_IDL_PROCINST" ON "act_ru_identitylink" USING btree (
  "PROC_INST_ID_" ASC
);

