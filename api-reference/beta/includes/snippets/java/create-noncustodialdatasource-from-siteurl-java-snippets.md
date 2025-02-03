---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.NoncustodialDataSource noncustodialDataSource = new com.microsoft.graph.beta.models.ediscovery.NoncustodialDataSource();
noncustodialDataSource.setApplyHoldToSource(false);
com.microsoft.graph.beta.models.ediscovery.SiteSource dataSource = new com.microsoft.graph.beta.models.ediscovery.SiteSource();
dataSource.setOdataType("microsoft.graph.ediscovery.siteSource");
Site site = new Site();
site.setWebUrl("https://contoso.sharepoint.com/sites/SecretSite");
dataSource.setSite(site);
noncustodialDataSource.setDataSource(dataSource);
com.microsoft.graph.models.ediscovery.NoncustodialDataSource result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").noncustodialDataSources().post(noncustodialDataSource);


```