---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.teams.item.schedule.timecards.item.confirmforuser.ConfirmForUserPostRequestBody confirmForUserPostRequestBody = new com.microsoft.graph.beta.teams.item.schedule.timecards.item.confirmforuser.ConfirmForUserPostRequestBody();
confirmForUserPostRequestBody.setUserId("d56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2");
var result = graphClient.teams().byTeamId("{team-id}").schedule().timeCards().byTimeCardId("{timeCard-id}").confirmForUser().post(confirmForUserPostRequestBody);


```