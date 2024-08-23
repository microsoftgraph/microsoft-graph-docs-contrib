---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.teams.item.schedule.share.SharePostRequestBody sharePostRequestBody = new com.microsoft.graph.beta.teams.item.schedule.share.SharePostRequestBody();
sharePostRequestBody.setNotifyTeam(true);
OffsetDateTime startDateTime = OffsetDateTime.parse("2018-10-08T00:00:00.000Z");
sharePostRequestBody.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2018-10-15T00:00:00.000Z");
sharePostRequestBody.setEndDateTime(endDateTime);
graphClient.teams().byTeamId("{team-id}").schedule().share().post(sharePostRequestBody);


```