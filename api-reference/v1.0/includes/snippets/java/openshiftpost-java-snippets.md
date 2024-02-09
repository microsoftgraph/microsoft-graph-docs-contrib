---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OpenShift openShift = new OpenShift();
openShift.setId("OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8");
openShift.setSchedulingGroupId("TAG_228940ed-ff84-4e25-b129-1b395cf78be0");
OpenShiftItem sharedOpenShift = new OpenShiftItem();
sharedOpenShift.setNotes("InventoryManagement");
sharedOpenShift.setOpenSlotCount(2);
sharedOpenShift.setDisplayName("Dayshift");
OffsetDateTime startDateTime = OffsetDateTime.parse("2018-10-04T00: 58: 45.340Z");
sharedOpenShift.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2018-10-04T09: 50: 45.332Z");
sharedOpenShift.setEndDateTime(endDateTime);
sharedOpenShift.setTheme(ScheduleEntityTheme.White);
LinkedList<ShiftActivity> activities = new LinkedList<ShiftActivity>();
ShiftActivity shiftActivity = new ShiftActivity();
shiftActivity.setIsPaid(true);
OffsetDateTime startDateTime1 = OffsetDateTime.parse("2018-10-04T00: 58: 45.340Z");
shiftActivity.setStartDateTime(startDateTime1);
OffsetDateTime endDateTime1 = OffsetDateTime.parse("2018-10-04T01: 58: 45.340Z");
shiftActivity.setEndDateTime(endDateTime1);
shiftActivity.setCode("");
shiftActivity.setDisplayName("Lunch");
activities.add(shiftActivity);
sharedOpenShift.setActivities(activities);
openShift.setSharedOpenShift(sharedOpenShift);
openShift.setDraftOpenShift(null);
OffsetDateTime createdDateTime = OffsetDateTime.parse("2019-03-14T04: 32: 51.451Z");
openShift.setCreatedDateTime(createdDateTime);
OffsetDateTime lastModifiedDateTime = OffsetDateTime.parse("2019-03-14T05: 32: 51.451Z");
openShift.setLastModifiedDateTime(lastModifiedDateTime);
IdentitySet lastModifiedBy = new IdentitySet();
lastModifiedBy.setApplication(null);
lastModifiedBy.setDevice(null);
Identity user = new Identity();
user.setId("366c0b19-49b1-41b5-a03f-9f3887bd0ed8");
user.setDisplayName("JohnDoe");
lastModifiedBy.setUser(user);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("conversation", null);
lastModifiedBy.setAdditionalData(additionalData);
openShift.setLastModifiedBy(lastModifiedBy);
OpenShift result = graphClient.teams().byTeamId("{team-id}").schedule().openShifts().post(openShift, requestConfiguration -> {
	requestConfiguration.headers.add("Authorization", "Bearer {token}");
});


```