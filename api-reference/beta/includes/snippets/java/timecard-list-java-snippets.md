---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TimeCardCollectionResponse result = graphClient.teams().byTeamId("{team-id}").schedule().timeCards().get(requestConfiguration -> {
	requestConfiguration.queryParameters.top = 2;
	requestConfiguration.queryParameters.filter = "state eq 'clockedOut'";
});


```