---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Shift shift = new Shift();
shift.setId("SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8");
shift.setUserId("c5d0c76b-80c4-481c-be50-923cd8d680a1");
shift.setSchedulingGroupId("TAG_228940ed-ff84-4e25-b129-1b395cf78be0");
ShiftItem sharedShift = new ShiftItem();
sharedShift.setDisplayName("Day shift");
sharedShift.setNotes("Please do inventory as part of your shift.");
OffsetDateTime startDateTime = OffsetDateTime.parse("2019-03-11T15:00:00Z");
sharedShift.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2019-03-12T00:00:00Z");
sharedShift.setEndDateTime(endDateTime);
sharedShift.setTheme(ScheduleEntityTheme.Blue);
LinkedList<ShiftActivity> activities = new LinkedList<ShiftActivity>();
ShiftActivity shiftActivity = new ShiftActivity();
shiftActivity.setIsPaid(true);
OffsetDateTime startDateTime1 = OffsetDateTime.parse("2019-03-11T15:00:00Z");
shiftActivity.setStartDateTime(startDateTime1);
OffsetDateTime endDateTime1 = OffsetDateTime.parse("2019-03-11T15:15:00Z");
shiftActivity.setEndDateTime(endDateTime1);
shiftActivity.setCode("");
shiftActivity.setDisplayName("Lunch");
activities.add(shiftActivity);
sharedShift.setActivities(activities);
shift.setSharedShift(sharedShift);
ShiftItem draftShift = new ShiftItem();
draftShift.setDisplayName("Day shift");
draftShift.setNotes("Please do inventory as part of your shift.");
OffsetDateTime startDateTime2 = OffsetDateTime.parse("2019-03-11T15:00:00Z");
draftShift.setStartDateTime(startDateTime2);
OffsetDateTime endDateTime2 = OffsetDateTime.parse("2019-03-12T00:00:00Z");
draftShift.setEndDateTime(endDateTime2);
draftShift.setTheme(ScheduleEntityTheme.Blue);
LinkedList<ShiftActivity> activities1 = new LinkedList<ShiftActivity>();
ShiftActivity shiftActivity1 = new ShiftActivity();
shiftActivity1.setIsPaid(true);
OffsetDateTime startDateTime3 = OffsetDateTime.parse("2019-03-11T15:00:00Z");
shiftActivity1.setStartDateTime(startDateTime3);
OffsetDateTime endDateTime3 = OffsetDateTime.parse("2019-03-11T15:30:00Z");
shiftActivity1.setEndDateTime(endDateTime3);
shiftActivity1.setCode("");
shiftActivity1.setDisplayName("Lunch");
activities1.add(shiftActivity1);
draftShift.setActivities(activities1);
shift.setDraftShift(draftShift);
Shift result = graphClient.teams().byTeamId("{team-id}").schedule().shifts().post(shift);


```