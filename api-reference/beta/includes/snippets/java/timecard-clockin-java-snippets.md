---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.teams.item.schedule.timecards.clockin.ClockInPostRequestBody clockInPostRequestBody = new com.microsoft.graph.beta.teams.item.schedule.timecards.clockin.ClockInPostRequestBody();
ItemBody notes = new ItemBody();
notes.setContentType(BodyType.Text);
notes.setContent("clock in notes");
clockInPostRequestBody.setNotes(notes);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("atAprovedLocation", true);
clockInPostRequestBody.setAdditionalData(additionalData);
var result = graphClient.teams().byTeamId("{team-id}").schedule().timeCards().clockIn().post(clockInPostRequestBody);


```