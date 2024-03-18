DROP INDEX "ACT_IDX_EVENT_SUBSCR_CONFIG_";
DROP INDEX "ACT_FK_EVENT_EXEC";

DROP TABLE IF EXISTS "act_ru_event_subscr";

CREATE TABLE "act_ru_event_subscr" (
  "ID_" varchar(64) NOT NULL,
  "REV_" int4,
  "EVENT_TYPE_" varchar(255) NOT NULL,
  "EVENT_NAME_" varchar(255),
  "EXECUTION_ID_" varchar(64),
  "PROC_INST_ID_" varchar(64),
  "ACTIVITY_ID_" varchar(64),
  "CONFIGURATION_" varchar(255),
  "CREATED_" timestamp NOT NULL,
  "PROC_DEF_ID_" varchar(64),
  "TENANT_ID_" varchar(255),
  PRIMARY KEY ("ID_")
);
CREATE INDEX "ACT_IDX_EVENT_SUBSCR_CONFIG_" ON "act_ru_event_subscr" USING btree (
  "CONFIGURATION_" ASC
);
CREATE INDEX "ACT_FK_EVENT_EXEC" ON "act_ru_event_subscr" USING btree (
  "EXECUTION_ID_" ASC
);

