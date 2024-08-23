---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.ediscovery.DataSource result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").noncustodialDataSources().byNoncustodialDataSourceId("{noncustodialDataSource-id}").dataSource().get();


```