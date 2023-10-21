---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Authorization", "Bearer {token}"));

OpenShift openShift = new OpenShift();
openShift.id = "OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8";
openShift.schedulingGroupId = "TAG_228940ed-ff84-4e25-b129-1b395cf78be0";
OpenShiftItem sharedOpenShift = new OpenShiftItem();
sharedOpenShift.notes = "InventoryManagement";
sharedOpenShift.openSlotCount = 2;
sharedOpenShift.displayName = "Dayshift";
sharedOpenShift.startDateTime = OffsetDateTimeSerializer.deserialize("2018-10-04T00: 58: 45.340Z");
sharedOpenShift.endDateTime = OffsetDateTimeSerializer.deserialize("2018-10-04T09: 50: 45.332Z");
sharedOpenShift.theme = ScheduleEntityTheme.WHITE;
LinkedList<ShiftActivity> activitiesList = new LinkedList<ShiftActivity>();
ShiftActivity activities = new ShiftActivity();
activities.isPaid = true;
activities.startDateTime = OffsetDateTimeSerializer.deserialize("2018-10-04T00: 58: 45.340Z");
activities.endDateTime = OffsetDateTimeSerializer.deserialize("2018-10-04T01: 58: 45.340Z");
activities.code = "";
activities.displayName = "Lunch";
activitiesList.add(activities);
sharedOpenShift.activities = activitiesList;
openShift.sharedOpenShift = sharedOpenShift;
openShift.draftOpenShift = null;
openShift.createdDateTime = OffsetDateTimeSerializer.deserialize("2019-03-14T04: 32: 51.451Z");
openShift.lastModifiedDateTime = OffsetDateTimeSerializer.deserialize("2019-03-14T05: 32: 51.451Z");
IdentitySet lastModifiedBy = new IdentitySet();
lastModifiedBy.application = null;
lastModifiedBy.device = null;
lastModifiedBy.conversation = null;
Identity user = new Identity();
user.id = "366c0b19-49b1-41b5-a03f-9f3887bd0ed8";
user.displayName = "JohnDoe";
lastModifiedBy.user = user;
openShift.lastModifiedBy = lastModifiedBy;

graphClient.teams("788b75d2-a911-48c0-a5e2-dc98480457e3").schedule().openShifts()
	.buildRequest( requestOptions )
	.post(openShift);

```