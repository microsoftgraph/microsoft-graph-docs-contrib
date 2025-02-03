---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceCollectionResponse result = graphClient.identityGovernance().entitlementManagement().catalogs().byAccessPackageCatalogId("{accessPackageCatalog-id}").resources().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"roles", "scopes"};
	requestConfiguration.queryParameters.filter = "id eq '{resourceId}'";
});


```