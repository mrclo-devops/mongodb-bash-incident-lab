const lab = db.getSiblingDB("incident_lab");

print("Incident metrics by service:");
lab.incidents.aggregate([
  {
    $group: {
      _id: "$service",
      incidents: { $sum: 1 },
      averageResponseTime: { $avg: "$responseTime" },
      maximumResponseTime: { $max: "$responseTime" }
    }
  },
  {
    $project: {
      _id: 0,
      service: "$_id",
      incidents: 1,
      averageResponseTime: { $round: ["$averageResponseTime", 0] },
      maximumResponseTime: 1
    }
  },
  { $sort: { incidents: -1, service: 1 } }
]);

print("Unresolved incidents by severity:");
lab.incidents.aggregate([
  { $match: { status: { $ne: "resolved" } } },
  { $group: { _id: "$severity", total: { $sum: 1 } } },
  { $sort: { total: -1 } }
]);
