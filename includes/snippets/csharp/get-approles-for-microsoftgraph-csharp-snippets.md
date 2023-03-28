---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.ServicePrincipals.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "displayName eq 'Microsoft Graph'";
	requestConfiguration.QueryParameters.Select = new string []{ "id","displayName","appId","appRoles" };
});


```