---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

RecommendationCollectionResponse result = graphClient.directory().recommendations().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "id eq '0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA'";
	requestConfiguration.queryParameters.expand = new String []{"impactedResources"};
});


```