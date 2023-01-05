---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackage accessPackage = new AccessPackage();
accessPackage.displayName = "sales reps";
accessPackage.description = "outside sales representatives";
accessPackage.isHidden = false;
AccessPackageCatalog catalog = new AccessPackageCatalog();
catalog.id = "66584aae-98bb-48cc-9458-7bee5d2a6577";
accessPackage.catalog = catalog;

graphClient.identityGovernance().entitlementManagement().accessPackages()
	.buildRequest()
	.post(accessPackage);

```