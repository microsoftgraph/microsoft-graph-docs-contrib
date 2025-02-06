---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.teams.item.schedule.timecards.item.clockout.ClockOutPostRequestBody clockOutPostRequestBody = new com.microsoft.graph.beta.teams.item.schedule.timecards.item.clockout.ClockOutPostRequestBody();
clockOutPostRequestBody.setIsAtApprovedLocation(true);
ItemBody notes = new ItemBody();
notes.setContentType(BodyType.Text);
notes.setContent("clocking out");
clockOutPostRequestBody.setNotes(notes);
var result = graphClient.teams().byTeamId("{team-id}").schedule().timeCards().byTimeCardId("{timeCard-id}").clockOut().post(clockOutPostRequestBody);


```