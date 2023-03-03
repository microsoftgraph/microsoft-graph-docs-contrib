---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoveryNoncustodialDataSource ediscoveryNoncustodialDataSource = new EdiscoveryNoncustodialDataSource();
SiteSource dataSource = new SiteSource();
Site site = new Site();
site.webUrl = "https://m365x809305.sharepoint.com/sites/Design-topsecret";
dataSource.site = site;
ediscoveryNoncustodialDataSource.dataSource = dataSource;

graphClient.security().cases().ediscoveryCases("b0073e4e-4184-41c6-9eb7-8c8cc3e2288b").noncustodialDataSources()
	.buildRequest()
	.post(ediscoveryNoncustodialDataSource);

```