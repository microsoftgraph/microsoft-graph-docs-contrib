---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChannelCollectionResponse result = graphClient.teams().byTeamId("{team-id}").allChannels().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "membershipType eq 'shared'";
});


```