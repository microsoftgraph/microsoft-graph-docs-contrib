---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.teams.item.schedule.timecards.item.startbreak.StartBreakPostRequestBody startBreakPostRequestBody = new com.microsoft.graph.beta.teams.item.schedule.timecards.item.startbreak.StartBreakPostRequestBody();
ItemBody notes = new ItemBody();
notes.setContentType(BodyType.Text);
notes.setContent("starting break");
startBreakPostRequestBody.setNotes(notes);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("isAtApprovedLocation", true);
startBreakPostRequestBody.setAdditionalData(additionalData);
var result = graphClient.teams().byTeamId("{team-id}").schedule().timeCards().byTimeCardId("{timeCard-id}").startBreak().post(startBreakPostRequestBody);


```