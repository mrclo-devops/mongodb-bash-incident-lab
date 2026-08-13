const lab = db.getSiblingDB("incident_lab");

lab.incidents.createIndex(
  { incidentId: 1 },
  { unique: true, name: "incident_id_unique" }
);

lab.incidents.createIndex(
  { service: 1, createdAt: -1 },
  { name: "service_created_at" }
);

print("Available indexes:");
printjson(lab.incidents.getIndexes());

print("Query execution plan:");
printjson(
  lab.incidents
    .find({ service: "payments-api" })
    .sort({ createdAt: -1 })
    .explain("executionStats")
);
