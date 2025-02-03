---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.EdiscoveryNoncustodialDataSource ediscoveryNoncustodialDataSource = new com.microsoft.graph.models.security.EdiscoveryNoncustodialDataSource();
com.microsoft.graph.models.security.SiteSource dataSource = new com.microsoft.graph.models.security.SiteSource();
dataSource.setOdataType("microsoft.graph.security.siteSource");
Site site = new Site();
site.setWebUrl("https://m365x809305.sharepoint.com/sites/Design-topsecret");
dataSource.setSite(site);
ediscoveryNoncustodialDataSource.setDataSource(dataSource);
com.microsoft.graph.models.security.EdiscoveryNoncustodialDataSource result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").noncustodialDataSources().post(ediscoveryNoncustodialDataSource);


```