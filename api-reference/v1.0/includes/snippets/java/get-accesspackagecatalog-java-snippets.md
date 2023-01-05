---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageCatalog accessPackageCatalog = graphClient.identityGovernance().entitlementManagement().catalogs("b1bf99ed-99ed-b1bf-ed99-bfb1ed99bfb1")
	.buildRequest()
	.get();

```