---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageCatalogCollectionPage catalogs = graphClient.identityGovernance().entitlementManagement().catalogs()
	.buildRequest()
	.get();

```