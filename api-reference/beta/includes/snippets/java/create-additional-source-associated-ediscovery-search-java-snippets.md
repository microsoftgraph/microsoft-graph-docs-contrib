---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SiteSource dataSource = new SiteSource();
Site site = new Site();
site.webUrl = "https://m365x809305.sharepoint.com/sites/Design-topsecret";
dataSource.site = site;

graphClient.security().cases().ediscoveryCases("{ediscoveryCaseId}").searches("{ediscoverySearchId}").additionalSources()
	.buildRequest()
	.post(dataSource);

```