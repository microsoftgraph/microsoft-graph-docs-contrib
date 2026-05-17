---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Oauth2PermissionGrants.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "id","clientId","resourceId","scope" };
	requestConfiguration.QueryParameters.Filter = "clientId eq '{mcp-client-servicePrincipal}' and resourceId eq '{mcp-server-servicePrincipal}'";
});


```