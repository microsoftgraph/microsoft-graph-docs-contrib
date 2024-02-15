---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamsTab result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").tabs().byTeamsTabId("{teamsTab-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"teamsApp"};
});


```