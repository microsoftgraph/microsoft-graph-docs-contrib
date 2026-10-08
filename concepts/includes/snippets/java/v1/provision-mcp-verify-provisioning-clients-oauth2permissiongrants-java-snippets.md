---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OAuth2PermissionGrantCollectionResponse result = graphClient.oauth2PermissionGrants().get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "clientId", "resourceId", "scope"};
	requestConfiguration.queryParameters.filter = "clientId eq '{mcp-client-servicePrincipal}' and resourceId eq '{mcp-server-servicePrincipal}'";
});


```