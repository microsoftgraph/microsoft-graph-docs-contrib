---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

LandingPageCollectionResponse result = graphClient.security().attackSimulation().landingPages().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "source eq 'tenant'";
});


```