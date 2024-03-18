DROP INDEX "ACT_UNIQ_PROCDEF";

DROP TABLE IF EXISTS "act_re_procdef";

CREATE TABLE "act_re_procdef" (
  "ID_" varchar(64) NOT NULL,
  "REV_" int4,
  "CATEGORY_" varchar(255),
  "NAME_" varchar(255),
  "KEY_" varchar(255) NOT NULL,
  "VERSION_" int4 NOT NULL,
  "DEPLOYMENT_ID_" varchar(64),
  "RESOURCE_NAME_" varchar(4000),
  "DGRM_RESOURCE_NAME_" varchar(4000),
  "DESCRIPTION_" varchar(4000),
  "HAS_START_FORM_KEY_" int2,
  "HAS_GRAPHICAL_NOTATION_" int2,
  "SUSPENSION_STATE_" int4,
  "TENANT_ID_" varchar(255),
  "ENGINE_VERSION_" varchar(255),
  PRIMARY KEY ("ID_")
);
CREATE UNIQUE INDEX "ACT_UNIQ_PROCDEF" ON "act_re_procdef" USING btree (
  "KEY_" ASC,
  "VERSION_" ASC,
  "TENANT_ID_" ASC
);

