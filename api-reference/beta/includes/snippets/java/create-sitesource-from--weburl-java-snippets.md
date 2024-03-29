---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.SiteSource siteSource = new com.microsoft.graph.beta.models.security.SiteSource();
Site site = new Site();
site.setWebUrl("https://m365x809305.sharepoint.com/sites/Retail");
siteSource.setSite(site);
com.microsoft.graph.models.security.SiteSource result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").legalHolds().byEdiscoveryHoldPolicyId("{ediscoveryHoldPolicy-id}").siteSources().post(siteSource);


```