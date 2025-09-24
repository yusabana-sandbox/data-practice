-include .env

PROJECT_DIR ?= .

.PHONY: dbt-debug
dbt-debug:
	uv run dbt debug --profiles-dir . --project-dir $(PROJECT_DIR)

.PHONY: dbt-run
dbt-run:
	uv run dbt run --profiles-dir . --project-dir $(PROJECT_DIR)

.PHONY: dbt-test
dbt-test:
	uv run dbt test --profiles-dir . --project-dir $(PROJECT_DIR)

.PHONY: dbt-clean
dbt-clean:
	uv run dbt clean --profiles-dir . --project-dir $(PROJECT_DIR)

.PHONY: dbt-seed
dbt-seed:
	uv run dbt seed --profiles-dir . --project-dir $(PROJECT_DIR)

.PHONY: dbt-deps
dbt-deps:
	uv run dbt deps --profiles-dir . --project-dir $(PROJECT_DIR)

.PHONY: dbt-compile
dbt-compile:
	uv run dbt compile --profiles-dir . --project-dir $(PROJECT_DIR)

.PHONY: dbt-build
dbt-build:
	uv run dbt build --profiles-dir . --project-dir $(PROJECT_DIR)
