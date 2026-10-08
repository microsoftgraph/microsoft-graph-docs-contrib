---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.networkaccess.GenerativeAIInsightCollectionResponse result = graphClient.networkAccess().logs().generativeAIInsights().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "activity eq 'prompt'";
	requestConfiguration.queryParameters.orderby = new String []{"createdDateTime desc"};
	requestConfiguration.queryParameters.top = 25;
});


```