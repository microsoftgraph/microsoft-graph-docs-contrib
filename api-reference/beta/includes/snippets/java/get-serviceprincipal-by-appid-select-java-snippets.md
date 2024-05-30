---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipal result = graphClient.servicePrincipalsWithAppId("{appId}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "appId", "displayName", "appRoles", "publishedPermissionScopes", "resourceSpecificApplicationPermissions"};
});


```