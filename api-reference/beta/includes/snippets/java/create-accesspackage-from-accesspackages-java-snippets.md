---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackage accessPackage = new AccessPackage();
accessPackage.setCatalogId("aa2f6514-3232-46e7-a08a-2411ad8d7128");
accessPackage.setDisplayName("sales reps");
accessPackage.setDescription("outside sales representatives");
AccessPackage result = graphClient.identityGovernance().entitlementManagement().accessPackages().post(accessPackage);


```