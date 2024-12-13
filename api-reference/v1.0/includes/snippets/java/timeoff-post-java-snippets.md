---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TimeOff timeOff = new TimeOff();
timeOff.setUserId("aa162a04-bec6-4b81-ba99-96caa7b2b24d");
TimeOffItem sharedTimeOff = new TimeOffItem();
sharedTimeOff.setTimeOffReasonId("TOR_29a5ba96-c7ef-4e76-bec6-055323746314");
OffsetDateTime startDateTime = OffsetDateTime.parse("2024-10-10T19:00:00Z");
sharedTimeOff.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2024-10-10T20:00:00Z");
sharedTimeOff.setEndDateTime(endDateTime);
sharedTimeOff.setTheme(ScheduleEntityTheme.Blue);
timeOff.setSharedTimeOff(sharedTimeOff);
timeOff.setDraftTimeOff(null);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("isStagedForDeletion", false);
timeOff.setAdditionalData(additionalData);
TimeOff result = graphClient.teams().byTeamId("{team-id}").schedule().timesOff().post(timeOff);


```