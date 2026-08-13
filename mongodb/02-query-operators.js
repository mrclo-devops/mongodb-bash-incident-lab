const lab = db.getSiblingDB("incident_lab");

print("P1 and P2 incidents:");
lab.incidents.find({ severity: { $in: ["P1", "P2"] } });

print("Slow requests:");
lab.incidents.find({ responseTime: { $gte: 1000 } }).sort({ responseTime: -1 });

print("Open high-priority incidents:");
lab.incidents.find({
  $and: [
    { status: { $ne: "resolved" } },
    { severity: "P1" }
  ]
});

print("Timeouts or authentication failures:");
lab.incidents.find({ category: { $in: ["timeout", "authentication"] } });
