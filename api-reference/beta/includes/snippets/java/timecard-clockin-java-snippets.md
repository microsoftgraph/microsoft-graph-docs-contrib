---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.teams.item.schedule.timecards.clockin.ClockInPostRequestBody clockInPostRequestBody = new com.microsoft.graph.beta.teams.item.schedule.timecards.clockin.ClockInPostRequestBody();
clockInPostRequestBody.setIsAtApprovedLocation(true);
ItemBody notes = new ItemBody();
notes.setContentType(BodyType.Text);
notes.setContent("clocking in");
clockInPostRequestBody.setNotes(notes);
var result = graphClient.teams().byTeamId("{team-id}").schedule().timeCards().clockIn().post(clockInPostRequestBody);


```