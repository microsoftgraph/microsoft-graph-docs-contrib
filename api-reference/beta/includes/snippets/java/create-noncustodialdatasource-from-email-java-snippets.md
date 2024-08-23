---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.NoncustodialDataSource noncustodialDataSource = new com.microsoft.graph.beta.models.ediscovery.NoncustodialDataSource();
noncustodialDataSource.setApplyHoldToSource(true);
com.microsoft.graph.beta.models.ediscovery.UserSource dataSource = new com.microsoft.graph.beta.models.ediscovery.UserSource();
dataSource.setOdataType("microsoft.graph.ediscovery.userSource");
dataSource.setEmail("adelev@contoso.com");
noncustodialDataSource.setDataSource(dataSource);
com.microsoft.graph.models.ediscovery.NoncustodialDataSource result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").noncustodialDataSources().post(noncustodialDataSource);


```