# Final Project — Incident Analyzer

This project combines the Bash and MongoDB exercises into a small incident-analysis workflow.

## Workflow

1. Read a synthetic application log.
2. Count errors, warnings, timeouts, and authentication failures.
3. Identify affected services.
4. Store structured incident records in MongoDB.
5. Generate metrics with aggregation pipelines.
6. Inspect query performance with indexes and `explain()`.

## Run

```bash
chmod +x bash/*.sh project/*.sh
./project/incident-analyzer.sh logs/sample-application.log
mongosh < mongodb/01-crud.js
mongosh < mongodb/03-aggregations.js
mongosh < mongodb/04-indexes.js
```

## Interview explanation

> I built a Bash-based incident analysis workflow that validates inputs, parses application logs, identifies operational failure patterns, and produces a structured report. I then modeled the incidents in MongoDB, created aggregation pipelines for service metrics, and used indexes and execution plans to evaluate query performance.
