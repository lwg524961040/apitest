DROP TABLE IF EXISTS "act_id_group";

CREATE TABLE "act_id_group" (
  "ID_" varchar(64) NOT NULL,
  "REV_" int4,
  "NAME_" varchar(255),
  "TYPE_" varchar(255),
  PRIMARY KEY ("ID_")
);

