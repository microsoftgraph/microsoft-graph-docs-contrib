---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackage accessPackage = new AccessPackage();
accessPackage.setCatalogId("cec5d6ab-c75d-47c0-9c1c-92e89f66e384");
accessPackage.setDisplayName("Marketing Campaign");
accessPackage.setDescription("Access to resources for the campaign");
AccessPackage result = graphClient.identityGovernance().entitlementManagement().accessPackages().post(accessPackage);


```