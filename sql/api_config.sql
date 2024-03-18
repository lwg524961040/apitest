DROP INDEX "key_UNIQUE";

DROP TABLE IF EXISTS "api_config";

CREATE TABLE "api_config" (
  "id" varchar(45) NOT NULL,
  "service" varchar(45) NOT NULL,
  "config_context" text,
  "type" varchar(45),
  PRIMARY KEY ("id")
);
CREATE UNIQUE INDEX "key_UNIQUE" ON "api_config" USING btree (
  "id" ASC
);

