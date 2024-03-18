DROP TABLE IF EXISTS "act_re_deployment";

CREATE TABLE "act_re_deployment" (
  "ID_" varchar(64) NOT NULL,
  "NAME_" varchar(255),
  "CATEGORY_" varchar(255),
  "KEY_" varchar(255),
  "TENANT_ID_" varchar(255),
  "DEPLOY_TIME_" timestamp,
  "ENGINE_VERSION_" varchar(255),
  PRIMARY KEY ("ID_")
);

