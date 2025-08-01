---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OpenShift openShift = new OpenShift();
openShift.setSchedulingGroupId("TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a");
OpenShiftItem sharedOpenShift = new OpenShiftItem();
sharedOpenShift.setDisplayName("Dayshift");
OffsetDateTime startDateTime = OffsetDateTime.parse("2024-11-04T20:00:00Z");
sharedOpenShift.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2024-11-04T21:00:00Z");
sharedOpenShift.setEndDateTime(endDateTime);
sharedOpenShift.setTheme(ScheduleEntityTheme.Blue);
sharedOpenShift.setNotes("InventoryManagement");
sharedOpenShift.setOpenSlotCount(1);
LinkedList<ShiftActivity> activities = new LinkedList<ShiftActivity>();
sharedOpenShift.setActivities(activities);
openShift.setSharedOpenShift(sharedOpenShift);
openShift.setIsStagedForDeletion(false);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("draftTimeOff", null);
openShift.setAdditionalData(additionalData);
OpenShift result = graphClient.teams().byTeamId("{team-id}").schedule().openShifts().post(openShift, requestConfiguration -> {
	requestConfiguration.headers.add("Authorization", "Bearer {token}");
});


```