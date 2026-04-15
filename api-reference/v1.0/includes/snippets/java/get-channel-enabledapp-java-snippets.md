---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamsApp result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").enabledApps().byTeamsAppId("{teamsApp-id}").get();


```