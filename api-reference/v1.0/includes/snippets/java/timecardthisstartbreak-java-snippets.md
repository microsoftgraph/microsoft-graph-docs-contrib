---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.teams.item.schedule.timecards.item.startbreak.StartBreakPostRequestBody startBreakPostRequestBody = new com.microsoft.graph.teams.item.schedule.timecards.item.startbreak.StartBreakPostRequestBody();
startBreakPostRequestBody.setIsAtApprovedLocation(true);
ItemBody notes = new ItemBody();
notes.setContent("Starting break late to make up for late clockin");
notes.setContentType(BodyType.Text);
startBreakPostRequestBody.setNotes(notes);
var result = graphClient.teams().byTeamId("{team-id}").schedule().timeCards().byTimeCardId("{timeCard-id}").startBreak().post(startBreakPostRequestBody);


```