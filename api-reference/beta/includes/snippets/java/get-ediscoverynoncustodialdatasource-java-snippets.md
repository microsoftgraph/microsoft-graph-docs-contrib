---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.EdiscoveryNoncustodialDataSource result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").noncustodialDataSources().byEdiscoveryNoncustodialDataSourceId("{ediscoveryNoncustodialDataSource-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"dataSource"};
});


```