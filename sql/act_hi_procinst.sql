DROP INDEX "PROC_INST_ID_";
DROP INDEX "ACT_IDX_HI_PRO_INST_END";
DROP INDEX "ACT_IDX_HI_PRO_I_BUSKEY";

DROP TABLE IF EXISTS "act_hi_procinst";

CREATE TABLE "act_hi_procinst" (
  "ID_" varchar(64) NOT NULL,
  "PROC_INST_ID_" varchar(64) NOT NULL,
  "BUSINESS_KEY_" varchar(255),
  "PROC_DEF_ID_" varchar(64) NOT NULL,
  "START_TIME_" timestamp NOT NULL,
  "END_TIME_" timestamp,
  "DURATION_" int8,
  "START_USER_ID_" varchar(255),
  "START_ACT_ID_" varchar(255),
  "END_ACT_ID_" varchar(255),
  "SUPER_PROCESS_INSTANCE_ID_" varchar(64),
  "DELETE_REASON_" varchar(4000),
  "TENANT_ID_" varchar(255),
  "NAME_" varchar(255),
  PRIMARY KEY ("ID_")
);
CREATE UNIQUE INDEX "PROC_INST_ID_" ON "act_hi_procinst" USING btree (
  "PROC_INST_ID_" ASC
);
CREATE INDEX "ACT_IDX_HI_PRO_INST_END" ON "act_hi_procinst" USING btree (
  "END_TIME_" ASC
);
CREATE INDEX "ACT_IDX_HI_PRO_I_BUSKEY" ON "act_hi_procinst" USING btree (
  "BUSINESS_KEY_" ASC
);

