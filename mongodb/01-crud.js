const lab = db.getSiblingDB("incident_lab");
lab.incidents.drop();

lab.incidents.insertMany([
  { incidentId: "INC-1001", service: "payments-api", severity: "P1", status: "resolved", responseTime: 5032, category: "timeout", createdAt: ISODate("2026-08-13T09:02:33Z") },
  { incidentId: "INC-1002", service: "auth-service", severity: "P2", status: "resolved", responseTime: 145, category: "authentication", createdAt: ISODate("2026-08-13T09:03:47Z") },
  { incidentId: "INC-1003", service: "webhook-worker", severity: "P2", status: "open", responseTime: 1240, category: "delivery", createdAt: ISODate("2026-08-13T09:06:21Z") },
  { incidentId: "INC-1004", service: "payments-api", severity: "P1", status: "open", responseTime: 3210, category: "database", createdAt: ISODate("2026-08-13T09:09:10Z") },
  { incidentId: "INC-1005", service: "webhook-worker", severity: "P2", status: "investigating", responseTime: 5001, category: "timeout", createdAt: ISODate("2026-08-13T09:12:06Z") }
]);

print("All incidents:");
lab.incidents.find().sort({ createdAt: 1 });

print("Open incidents:");
lab.incidents.find({ status: "open" }, { _id: 0, incidentId: 1, service: 1, severity: 1 });

lab.incidents.updateOne(
  { incidentId: "INC-1003" },
  { $set: { status: "investigating", updatedAt: new Date() } }
);

print("Incident count:", lab.incidents.countDocuments());
