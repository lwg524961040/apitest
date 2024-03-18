DROP INDEX "ACT_FK_BYTEARR_DEPL";

DROP TABLE IF EXISTS "act_ge_bytearray";

CREATE TABLE "act_ge_bytearray" (
  "ID_" varchar(64) NOT NULL,
  "REV_" int4,
  "NAME_" varchar(255),
  "DEPLOYMENT_ID_" varchar(64),
  "BYTES_" bytea,
  "GENERATED_" int2,
  PRIMARY KEY ("ID_")
);
CREATE INDEX "ACT_FK_BYTEARR_DEPL" ON "act_ge_bytearray" USING btree (
  "DEPLOYMENT_ID_" ASC
);

