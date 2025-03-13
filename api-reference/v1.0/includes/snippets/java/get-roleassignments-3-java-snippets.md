---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentCollectionResponse result = graphClient.roleManagement().entitlementManagement().roleAssignments().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "appScopeId eq '/AccessPackageCatalog/4cee616b-fdf9-4890-9d10-955e0ccb12bc'";
	requestConfiguration.queryParameters.expand = new String []{"principal"};
});


```