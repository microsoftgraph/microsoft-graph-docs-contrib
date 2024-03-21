---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Channel result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"summary"};
});


```