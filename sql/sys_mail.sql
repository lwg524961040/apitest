DROP TABLE IF EXISTS "sys_mail";

CREATE TABLE "sys_mail" (
  "mail_id" varchar(20) NOT NULL,
  "receiver" varchar(1024) NOT NULL,
  "subject" varchar(128),
  "content" text NOT NULL,
  "create_by" varchar(16),
  "create_time" timestamp NOT NULL,
  PRIMARY KEY ("mail_id")
);
COMMENT ON COLUMN "sys_mail"."mail_id" IS '邮件id(主键)';
COMMENT ON COLUMN "sys_mail"."receiver" IS '收件人邮箱';
COMMENT ON COLUMN "sys_mail"."subject" IS '邮件主体';
COMMENT ON COLUMN "sys_mail"."content" IS '邮件正文';
COMMENT ON COLUMN "sys_mail"."create_by" IS '发送人';
COMMENT ON COLUMN "sys_mail"."create_time" IS '创建时间';

