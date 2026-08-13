# MongoDB & Bash Incident Lab

[![Learning](https://img.shields.io/badge/status-learning-informational)](docs/learning-roadmap.md)
[![MongoDB](https://img.shields.io/badge/MongoDB-CRUD%20%7C%20Aggregation-47A248?logo=mongodb&logoColor=white)](mongodb/)
[![Bash](https://img.shields.io/badge/Bash-automation-4EAA25?logo=gnubash&logoColor=white)](bash/)

A hands-on learning project combining **MongoDB**, **Bash scripting**, log analysis, API troubleshooting, and incident automation.

## Goal

Build a command-line workflow that analyzes application logs, identifies operational incidents, stores structured records in MongoDB, and produces useful incident reports.

## Skills demonstrated

- MongoDB CRUD operations and query operators
- Aggregation pipelines and indexes
- Bash navigation, pipes, redirection, variables, and control flow
- Log analysis with `grep`, `awk`, `sed`, and `jq`
- API health checks with `curl`
- Error handling and exit codes
- Git-based learning documentation
- Incident response and technical troubleshooting

## Learning path

| Day | MongoDB | Bash | Deliverable |
|---|---|---|---|
| 1 | Documents, collections, BSON | Navigation and files | Environment and sample data |
| 2 | Insert and find | Reading and filtering | CRUD exercises |
| 3 | Query operators | Pipes, grep and find | Log analysis |
| 4 | Update and delete | Variables and exit codes | First automation script |
| 5 | Aggregation pipelines | Conditions and loops | Incident summary |
| 6 | Indexes and explain | Functions and curl | API health check |
| 7 | Review and troubleshooting | Integrated script | Incident analyzer |

See the complete [7-day roadmap](docs/learning-roadmap.md).

## Repository structure

```text
.
├── bash/       # Bash exercises and automation
├── docs/       # Roadmap and command references
├── logs/       # Synthetic application logs
├── mongodb/    # MongoDB queries and sample records
└── project/    # Final integrated incident analyzer
```

## Quick start

### Requirements

- Bash 3.2+
- MongoDB Shell (`mongosh`)
- `jq`
- `curl`

### Run the log analyzer

```bash
chmod +x bash/02-log-analysis.sh
./bash/02-log-analysis.sh logs/sample-application.log
```

### Load the MongoDB exercises

```bash
mongosh < mongodb/01-crud.js
mongosh < mongodb/02-query-operators.js
mongosh < mongodb/03-aggregations.js
mongosh < mongodb/04-indexes.js
```

## Data safety

All incidents and logs in this repository are fictional. No employer, customer, production, credential, or personally identifiable data is included.

## Author

**Marcelo Poblete** — Integration & Technical Support Engineer focused on APIs, incident response, observability, and automation.

- Portfolio: [mrclo.dev](https://mrclo.dev)
- GitHub: [mrclo-devops](https://github.com/mrclo-devops)
