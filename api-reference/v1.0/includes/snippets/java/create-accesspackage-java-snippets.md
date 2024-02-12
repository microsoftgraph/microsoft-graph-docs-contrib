---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackage accessPackage = new AccessPackage();
accessPackage.setDisplayName("sales reps");
accessPackage.setDescription("outside sales representatives");
accessPackage.setIsHidden(false);
AccessPackageCatalog catalog = new AccessPackageCatalog();
catalog.setId("66584aae-98bb-48cc-9458-7bee5d2a6577");
accessPackage.setCatalog(catalog);
AccessPackage result = graphClient.identityGovernance().entitlementManagement().accessPackages().post(accessPackage);


```