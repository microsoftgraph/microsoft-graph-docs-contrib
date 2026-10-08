---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.windowsupdates.PolicyCollectionResponse result = graphClient.admin().windows().updates().policies().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "isof('microsoft.graph.windowsUpdates.qualityUpdatePolicy')";
});


```