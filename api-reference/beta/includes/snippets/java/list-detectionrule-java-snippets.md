---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.DetectionRuleCollectionResponse result = graphClient.security().rules().detectionRules().get(requestConfiguration -> {
	requestConfiguration.queryParameters.top = 3;
});


```