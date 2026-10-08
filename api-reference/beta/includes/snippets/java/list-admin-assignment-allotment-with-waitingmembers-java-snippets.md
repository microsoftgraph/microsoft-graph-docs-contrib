---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.cloudlicensing.AllotmentCollectionResponse result = graphClient.admin().cloudLicensing().allotments().get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "allottedUnits", "consumedUnits", "assignableTo"};
	requestConfiguration.queryParameters.expand = new String []{"waitingMembers($select=id,waitingSinceDateTime)"};
});


```