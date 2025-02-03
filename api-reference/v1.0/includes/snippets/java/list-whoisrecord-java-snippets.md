---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.WhoisRecordCollectionResponse result = graphClient.security().threatIntelligence().whoisRecords().get(requestConfiguration -> {
	requestConfiguration.queryParameters.search = "\"admin/address/state:WA";
	requestConfiguration.queryParameters.orderby = new String []{"registrationDateTime desc""};
});


```