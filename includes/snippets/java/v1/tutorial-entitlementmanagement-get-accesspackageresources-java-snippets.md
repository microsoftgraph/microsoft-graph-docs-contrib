---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceCollectionResponse result = graphClient.identityGovernance().entitlementManagement().catalogs().byAccessPackageCatalogId("{accessPackageCatalog-id}").resources().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "originId eq 'e93e24d1-2b65-4a6c-a1dd-654a12225487'";
});


```