---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.SiteSource dataSource = new com.microsoft.graph.models.security.SiteSource();
dataSource.setOdataType("microsoft.graph.security.siteSource");
Site site = new Site();
site.setWebUrl("https://contoso.sharepoint.com/sites/SecretSite");
dataSource.setSite(site);
com.microsoft.graph.models.security.DataSource result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").searches().byEdiscoverySearchId("{ediscoverySearch-id}").additionalSources().post(dataSource);


```