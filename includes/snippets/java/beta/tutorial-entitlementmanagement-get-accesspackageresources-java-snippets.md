---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceCollectionResponse result = graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs().byAccessPackageCatalogId("{accessPackageCatalog-id}").accessPackageResources().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "(displayName eq 'Marketing resources')";
});


```