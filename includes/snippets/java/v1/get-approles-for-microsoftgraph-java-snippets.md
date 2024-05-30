---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipalCollectionResponse result = graphClient.servicePrincipals().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "displayName eq 'Microsoft Graph'";
	requestConfiguration.queryParameters.select = new String []{"id", "displayName", "appId", "appRoles"};
});


```