---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TimeOff timeOff = new TimeOff();
timeOff.setUserId("c5d0c76b-80c4-481c-be50-923cd8d680a1");
TimeOffItem sharedTimeOff = new TimeOffItem();
sharedTimeOff.setTimeOffReasonId("TOR_891045ca-b5d2-406b-aa06-a3c8921245d7");
OffsetDateTime startDateTime = OffsetDateTime.parse("2019-03-11T07:00:00Z");
sharedTimeOff.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2019-03-12T07:00:00Z");
sharedTimeOff.setEndDateTime(endDateTime);
sharedTimeOff.setTheme(ScheduleEntityTheme.White);
timeOff.setSharedTimeOff(sharedTimeOff);
TimeOffItem draftTimeOff = new TimeOffItem();
draftTimeOff.setTimeOffReasonId("TOR_891045ca-b5d2-406b-aa06-a3c8921245d7");
OffsetDateTime startDateTime1 = OffsetDateTime.parse("2019-03-11T07:00:00Z");
draftTimeOff.setStartDateTime(startDateTime1);
OffsetDateTime endDateTime1 = OffsetDateTime.parse("2019-03-12T07:00:00Z");
draftTimeOff.setEndDateTime(endDateTime1);
draftTimeOff.setTheme(ScheduleEntityTheme.Pink);
timeOff.setDraftTimeOff(draftTimeOff);
TimeOff result = graphClient.teams().byTeamId("{team-id}").schedule().timesOff().post(timeOff);


```