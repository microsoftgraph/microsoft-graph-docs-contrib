---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TimeOffRequest timeOffRequest = new TimeOffRequest();
timeOffRequest.setSenderMessage("Need a break");
timeOffRequest.setTimeOffReasonId("TOR_08c42f26-9b83-492c-bf52-f3609eb083e3");
timeOffRequest.setSenderUserId("3f2504e0-4f89-11d3-9a0c-0305e82c3301");
OffsetDateTime startDateTime = OffsetDateTime.parse("2025-05-26T07:00:00Z");
timeOffRequest.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2025-05-27T07:00:00Z");
timeOffRequest.setEndDateTime(endDateTime);
TimeOffRequest result = graphClient.teams().byTeamId("{team-id}").schedule().timeOffRequests().post(timeOffRequest);


```