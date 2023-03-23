---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.ServicePrincipals.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Search = "\"displayName:Team\"";
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.Select = new string []{ "accountEnabled","displayName","publisherName","servicePrincipalType","signInAudience" };
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```