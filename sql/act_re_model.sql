DROP INDEX "ACT_FK_MODEL_SOURCE";
DROP INDEX "ACT_FK_MODEL_SOURCE_EXTRA";
DROP INDEX "ACT_FK_MODEL_DEPLOYMENT";

DROP TABLE IF EXISTS "act_re_model";

CREATE TABLE "act_re_model" (
  "ID_" varchar(64) NOT NULL,
  "REV_" int4,
  "NAME_" varchar(255),
  "KEY_" varchar(255),
  "CATEGORY_" varchar(255),
  "CREATE_TIME_" timestamp,
  "LAST_UPDATE_TIME_" timestamp,
  "VERSION_" int4,
  "META_INFO_" varchar(4000),
  "DEPLOYMENT_ID_" varchar(64),
  "EDITOR_SOURCE_VALUE_ID_" varchar(64),
  "EDITOR_SOURCE_EXTRA_VALUE_ID_" varchar(64),
  "TENANT_ID_" varchar(255),
  PRIMARY KEY ("ID_")
);
CREATE INDEX "ACT_FK_MODEL_SOURCE" ON "act_re_model" USING btree (
  "EDITOR_SOURCE_VALUE_ID_" ASC
);
CREATE INDEX "ACT_FK_MODEL_SOURCE_EXTRA" ON "act_re_model" USING btree (
  "EDITOR_SOURCE_EXTRA_VALUE_ID_" ASC
);
CREATE INDEX "ACT_FK_MODEL_DEPLOYMENT" ON "act_re_model" USING btree (
  "DEPLOYMENT_ID_" ASC
);

