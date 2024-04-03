---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleCollectionResponse result = graphClient.identityGovernance().entitlementManagement().catalogs().byAccessPackageCatalogId("{accessPackageCatalog-id}").resourceRoles().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "(originSystem eq 'AadGroup' and displayName eq 'Member' and resource/id eq '274a1e21c5-8a76-4578-acb1-641160e076e')";
	requestConfiguration.queryParameters.expand = new String []{"resource"};
});


```