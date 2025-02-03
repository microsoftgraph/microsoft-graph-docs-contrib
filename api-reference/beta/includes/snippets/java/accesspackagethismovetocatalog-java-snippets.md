---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identitygovernance.entitlementmanagement.accesspackages.item.movetocatalog.MoveToCatalogPostRequestBody moveToCatalogPostRequestBody = new com.microsoft.graph.beta.identitygovernance.entitlementmanagement.accesspackages.item.movetocatalog.MoveToCatalogPostRequestBody();
moveToCatalogPostRequestBody.setCatalogId("3301434b-99bd-46be-923b-d762c30c8e8b");
graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").moveToCatalog().post(moveToCatalogPostRequestBody);


```