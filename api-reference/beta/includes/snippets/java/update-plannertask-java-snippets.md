---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerTask plannerTask = new PlannerTask();
PlannerAssignments assignments = new PlannerAssignments();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
PlannerAssignment fbab97d049324511B675204639209557 = new PlannerAssignment();
fbab97d049324511B675204639209557.setOdataType("#microsoft.graph.plannerAssignment");
fbab97d049324511B675204639209557.setOrderHint("N9917 U2883!");
additionalData.put("fbab97d0-4932-4511-b675-204639209557", fbab97d049324511B675204639209557);
assignments.setAdditionalData(additionalData);
plannerTask.setAssignments(assignments);
PlannerAppliedCategories appliedCategories = new PlannerAppliedCategories();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("category3", true);
additionalData1.put("category4", false);
appliedCategories.setAdditionalData(additionalData1);
plannerTask.setAppliedCategories(appliedCategories);
PlannerTaskRecurrence recurrence = new PlannerTaskRecurrence();
PlannerRecurrenceSchedule schedule = new PlannerRecurrenceSchedule();
RecurrencePattern pattern = new RecurrencePattern();
pattern.setType(RecurrencePatternType.Daily);
pattern.setInterval(3);
schedule.setPattern(pattern);
OffsetDateTime patternStartDateTime = OffsetDateTime.parse("2022-02-22T02:10:33Z");
schedule.setPatternStartDateTime(patternStartDateTime);
recurrence.setSchedule(schedule);
plannerTask.setRecurrence(recurrence);
PlannerTask result = graphClient.planner().tasks().byPlannerTaskId("{plannerTask-id}").patch(plannerTask, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "return=representation");
	requestConfiguration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```