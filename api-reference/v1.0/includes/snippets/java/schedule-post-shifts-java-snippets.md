---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Shift shift = new Shift();
shift.setUserId("5ca83ce7-291d-43b7-bf53-af79eef4bc1d");
ShiftItem draftShift = new ShiftItem();
draftShift.setDisplayName(null);
OffsetDateTime startDateTime = OffsetDateTime.parse("2024-10-08T15:00:00Z");
draftShift.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2024-10-09T00:00:00Z");
draftShift.setEndDateTime(endDateTime);
draftShift.setTheme(ScheduleEntityTheme.Blue);
draftShift.setNotes(null);
LinkedList<ShiftActivity> activities = new LinkedList<ShiftActivity>();
draftShift.setActivities(activities);
shift.setDraftShift(draftShift);
shift.setSharedShift(null);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("isStagedForDeletion", false);
shift.setAdditionalData(additionalData);
Shift result = graphClient.teams().byTeamId("{team-id}").schedule().shifts().post(shift);


```