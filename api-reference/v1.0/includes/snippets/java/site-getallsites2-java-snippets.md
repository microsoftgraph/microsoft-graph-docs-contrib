---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SiteGetAllSitesCollectionPage getAllSites = graphClient.sites()
	.getAllSites()
	.buildRequest()
	.skipToken("U1BHZW9EYXRhTG9jYXRpb25Db2RlYU5BTQ")
	.get();

```