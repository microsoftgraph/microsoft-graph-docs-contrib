---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.teams.item.schedule.timecards.clockin.ClockInPostRequestBody clockInPostRequestBody = new com.microsoft.graph.teams.item.schedule.timecards.clockin.ClockInPostRequestBody();
clockInPostRequestBody.setIsAtApprovedLocation(true);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("onBehalfOfUserId", "3f29c8e7-7a41-4d8e-99d6-2b1f76c9421e");
clockInPostRequestBody.setAdditionalData(additionalData);
var result = graphClient.teams().byTeamId("{team-id}").schedule().timeCards().clockIn().post(clockInPostRequestBody);


```