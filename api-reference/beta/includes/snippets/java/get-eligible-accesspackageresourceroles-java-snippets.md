---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleCollectionResponse result = graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs().byAccessPackageCatalogId("{accessPackageCatalog-id}").accessPackageResourceRoles().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "(originSystem eq 'AadGroup' and accessPackageResource/id eq 'a35bef72-a8aa-4ca3-af30-f6b2ece7208f')";
	requestConfiguration.queryParameters.expand = new String []{"accessPackageResource"};
});


```