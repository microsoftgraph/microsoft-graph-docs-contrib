---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SiteGetAllSitesCollectionPage getAllSites = graphClient.sites()
	.getAllSites()
	.buildRequest()
	.get();

```