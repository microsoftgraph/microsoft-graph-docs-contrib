---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerTask plannerTask = new PlannerTask();
plannerTask.setPlanId("xqQg5FS2LkCp935s-FIFm2QAFkHM");
plannerTask.setBucketId("hsOf2dhOJkqyYYZEtdzDe2QAIUCR");
plannerTask.setTitle("Update client list");
PlannerAssignments assignments = new PlannerAssignments();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
PlannerAssignment fbab97d049324511B675204639209557 = new PlannerAssignment();
fbab97d049324511B675204639209557.setOdataType("#microsoft.graph.plannerAssignment");
fbab97d049324511B675204639209557.setOrderHint(" !");
additionalData.put("fbab97d0-4932-4511-b675-204639209557", fbab97d049324511B675204639209557);
assignments.setAdditionalData(additionalData);
plannerTask.setAssignments(assignments);
PlannerTask result = graphClient.planner().tasks().post(plannerTask);


```