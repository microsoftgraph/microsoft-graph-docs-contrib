---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageCatalog accessPackageCatalog = new AccessPackageCatalog();
accessPackageCatalog.displayName = "sales";
accessPackageCatalog.description = "for employees working with sales and outside sales partners";
accessPackageCatalog.state = AccessPackageCatalogState.PUBLISHED;
accessPackageCatalog.isExternallyVisible = true;

graphClient.identityGovernance().entitlementManagement().catalogs()
	.buildRequest()
	.post(accessPackageCatalog);

```