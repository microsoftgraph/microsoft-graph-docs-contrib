---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageCatalog accessPackageCatalog = new AccessPackageCatalog();
accessPackageCatalog.displayName = "Catalog One";

graphClient.identityGovernance().entitlementManagement().catalogs("{accessPackageCatalogId}")
	.buildRequest()
	.patch(accessPackageCatalog);

```