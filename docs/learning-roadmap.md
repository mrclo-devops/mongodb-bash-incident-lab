# Intensive 7-Day Learning Roadmap

The objective is practical fluency: use Bash to investigate systems and MongoDB to store, query, aggregate, and optimize incident data.

## Daily method

- 45 minutes: focused course content
- 60 minutes: commands typed from memory
- 45 minutes: repository exercise
- 15 minutes: recall and short notes

## Day 1 — Foundations

**MongoDB:** databases, collections, documents, BSON, and `mongosh`.

**Bash:** `pwd`, `ls`, `cd`, `mkdir`, `touch`, `cp`, and `mv`.

**Evidence:** explore the repository and inspect the sample data.

## Day 2 — Create and read

**MongoDB:** `insertOne()`, `insertMany()`, `find()`, projection, sorting, and limits.

**Bash:** `cat`, `less`, `head`, `tail`, `wc`, `sort`, and `uniq`.

**Evidence:** complete `mongodb/01-crud.js`.

## Day 3 — Search and filter

**MongoDB:** comparison and logical operators.

**Bash:** `grep`, `find`, pipes, and redirection.

**Evidence:** run `bash/02-log-analysis.sh` against the sample log.

## Day 4 — Modify and automate

**MongoDB:** update and delete operations.

**Bash:** variables, positional arguments, permissions, conditions, and exit codes.

**Evidence:** modify the log analyzer and test its failure path.

## Day 5 — Aggregate

**MongoDB:** `$match`, `$group`, `$project`, `$sort`, and `$limit`.

**Bash:** `if`, `case`, `for`, and `while`.

**Evidence:** generate incident metrics by service and severity.

## Day 6 — Diagnose performance

**MongoDB:** indexes and `explain("executionStats")`.

**Bash:** functions, `curl`, JSON, and error handling.

**Evidence:** run an API health check and inspect a query plan.

## Day 7 — Integrate

Run the final incident analyzer, import generated records into MongoDB, execute the aggregation report, and document what you learned.

## Completion checklist

- [ ] Explain database, collection, document, BSON, and ObjectId
- [ ] Perform CRUD operations without copying examples
- [ ] Build a three-stage aggregation pipeline
- [ ] Explain when an index helps
- [ ] Navigate and manipulate files in Bash
- [ ] Filter logs using pipes
- [ ] Write a script with arguments and error handling
- [ ] Explain the final project in two minutes
