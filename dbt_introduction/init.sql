-- postgresのコンソールを開いて以下を実行する

-- DB作成
CREATE DATABASE dbt_training;

-- スキーマ作成
CREATE SCHEMA raw;

-- テーブル作成
--   従業員テーブル
CREATE TABLE "dbt_training"."raw"."employees" (
	"employee_id" varchar(256),
	"first_name" varchar(256),
	"last_name" varchar(256),
	"email" varchar(256),
	"job_id" varchar(256),
	"loaded_at" timestamp
);

--   お仕事テーブル
CREATE TABLE "dbt_training"."raw"."jobs" (
	"job_id" varchar(256),
	"job_title" varchar(256),
	"min_salary" INTEGER,
	"max_salary" INTEGER,
	"loaded_at" timestamp
);

-- データをINSERT
-- 従業員テーブルへデータをINSERT
INSERT INTO "dbt_training"."raw"."employees" VALUES
	('101','taro','yamada','yamada@example.com','11','2022-03-16'),
	('102','ziro','sato','satou@example.com','11','2022-03-16')
;

-- 仕事テーブルへデータをINSERT
INSERT INTO "dbt_training"."raw"."jobs" VALUES
	('11','datascientist',6000000,12000000,'2022-03-16'),
	('12','dataengineer',5000000,10000000,'2022-03-16')
;
