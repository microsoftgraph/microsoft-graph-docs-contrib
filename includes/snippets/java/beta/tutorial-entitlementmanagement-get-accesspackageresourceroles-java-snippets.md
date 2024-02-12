---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleCollectionResponse result = graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs().byAccessPackageCatalogId("{accessPackageCatalog-id}").accessPackageResourceRoles().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "(originSystem eq 'AadGroup' and accessPackageResource/id eq '4a1e21c5-8a76-4578-acb1-641160e076e8' and displayName eq 'Member')";
	requestConfiguration.queryParameters.expand = new String []{"accessPackageResource"};
});


```