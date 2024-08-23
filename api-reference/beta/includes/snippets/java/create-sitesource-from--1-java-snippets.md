---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.SiteSource siteSource = new com.microsoft.graph.beta.models.ediscovery.SiteSource();
Site site = new Site();
site.setWebUrl("https://contoso.sharepoint.com/sites/HumanResources");
siteSource.setSite(site);
com.microsoft.graph.models.ediscovery.SiteSource result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").custodians().byCustodianId("{custodian-id}").siteSources().post(siteSource);


```