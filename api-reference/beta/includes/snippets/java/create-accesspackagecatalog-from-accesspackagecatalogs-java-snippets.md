---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageCatalog accessPackageCatalog = new AccessPackageCatalog();
accessPackageCatalog.setDisplayName("sales");
accessPackageCatalog.setDescription("for employees working with sales and outside sales partners");
accessPackageCatalog.setIsExternallyVisible(true);
AccessPackageCatalog result = graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs().post(accessPackageCatalog);


```