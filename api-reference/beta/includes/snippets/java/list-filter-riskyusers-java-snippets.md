---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

RiskyUserCollectionResponse result = graphClient.identityProtection().riskyUsers().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "riskLevel eq microsoft.graph.riskLevel'medium'";
});


```