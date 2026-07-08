---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.AnalyzedEmailCollectionResponse result = graphClient.security().collaboration().analyzedEmails().get(requestConfiguration -> {
	requestConfiguration.queryParameters.startTime = "2024-02-18";
	requestConfiguration.queryParameters.endTime = "2024-02-20";
});


```