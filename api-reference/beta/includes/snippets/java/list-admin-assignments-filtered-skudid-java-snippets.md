---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.cloudlicensing.AssignmentCollectionResponse result = graphClient.admin().cloudLicensing().assignments().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"allotment($filter=skuId in (639dec6b-bb19-468b-871c-c5c441c4b0cb, a403ebcc-fae0-4ca2-8c8c-7a907fd6c235)", ")"};
});


```