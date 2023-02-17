---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

NoncustodialDataSource noncustodialDataSource = new NoncustodialDataSource();
noncustodialDataSource.applyHoldToSource = false;
SiteSource dataSource = new SiteSource();
Site site = new Site();
site.webUrl = "https://contoso.sharepoint.com/sites/SecretSite";
dataSource.site = site;
noncustodialDataSource.dataSource = dataSource;

graphClient.compliance().ediscovery().cases("15d80234-8320-4f10-96d0-d98d53ffdfc9").noncustodialDataSources()
	.buildRequest()
	.post(noncustodialDataSource);

```