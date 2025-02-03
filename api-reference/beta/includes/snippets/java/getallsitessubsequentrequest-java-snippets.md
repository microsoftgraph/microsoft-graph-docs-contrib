---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.sites().getAllSites().get(requestConfiguration -> {
	requestConfiguration.queryParameters.skiptoken = "U1BHZW9EYXRhTG9jYXRpb25Db2RlYU5BTQ";
});


```