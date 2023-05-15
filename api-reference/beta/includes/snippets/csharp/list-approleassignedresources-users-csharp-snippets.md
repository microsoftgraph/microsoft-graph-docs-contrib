---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.AppRoleAssignedResources.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "displayName","accountEnabled","servicePrincipalType","signInAudience" };
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```