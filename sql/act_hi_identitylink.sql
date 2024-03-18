DROP INDEX "ACT_IDX_HI_IDENT_LNK_USER";
DROP INDEX "ACT_IDX_HI_IDENT_LNK_TASK";
DROP INDEX "ACT_IDX_HI_IDENT_LNK_PROCINST";

DROP TABLE IF EXISTS "act_hi_identitylink";

CREATE TABLE "act_hi_identitylink" (
  "ID_" varchar(64) NOT NULL,
  "GROUP_ID_" varchar(255),
  "TYPE_" varchar(255),
  "USER_ID_" varchar(255),
  "TASK_ID_" varchar(64),
  "PROC_INST_ID_" varchar(64),
  PRIMARY KEY ("ID_")
);
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_USER" ON "act_hi_identitylink" USING btree (
  "USER_ID_" ASC
);
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_TASK" ON "act_hi_identitylink" USING btree (
  "TASK_ID_" ASC
);
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_PROCINST" ON "act_hi_identitylink" USING btree (
  "PROC_INST_ID_" ASC
);

