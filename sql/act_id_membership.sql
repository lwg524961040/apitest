DROP INDEX "ACT_FK_MEMB_GROUP";

DROP TABLE IF EXISTS "act_id_membership";

CREATE TABLE "act_id_membership" (
  "USER_ID_" varchar(64) NOT NULL,
  "GROUP_ID_" varchar(64) NOT NULL,
  PRIMARY KEY ("USER_ID_", "GROUP_ID_")
);
CREATE INDEX "ACT_FK_MEMB_GROUP" ON "act_id_membership" USING btree (
  "GROUP_ID_" ASC
);

