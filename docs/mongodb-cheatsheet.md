# MongoDB Quick Reference

## Select and inspect

```javascript
show dbs
use incident_lab
show collections
db.incidents.findOne()
```

## CRUD

```javascript
db.incidents.insertOne({ service: "payments-api", severity: "P1" })
db.incidents.find({ severity: "P1" }, { service: 1, status: 1 })
db.incidents.updateOne({ service: "payments-api" }, { $set: { status: "resolved" } })
db.incidents.deleteOne({ service: "payments-api" })
```

## Common operators

```javascript
{ responseTime: { $gt: 1000 } }
{ severity: { $in: ["P1", "P2"] } }
{ $and: [{ status: "open" }, { severity: "P1" }] }
```

## Aggregation

```javascript
db.incidents.aggregate([
  { $match: { status: "resolved" } },
  { $group: { _id: "$service", total: { $sum: 1 } } },
  { $sort: { total: -1 } }
])
```

## Indexes and diagnosis

```javascript
db.incidents.createIndex({ service: 1, createdAt: -1 })
db.incidents.getIndexes()
db.incidents.find({ service: "payments-api" }).explain("executionStats")
```
