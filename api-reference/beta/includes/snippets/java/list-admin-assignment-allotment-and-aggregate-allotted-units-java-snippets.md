---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.cloudlicensing.AllotmentCollectionResponse result = graphClient.admin().cloudLicensing().allotments().get(requestConfiguration -> {
	requestConfiguration.queryParameters.apply = "groupby((skuId,skuPartNumber), aggregate(allottedUnits with sum as totalAllottedUnits, consumedUnits with sum as totalConsumedUnits))";
});


```