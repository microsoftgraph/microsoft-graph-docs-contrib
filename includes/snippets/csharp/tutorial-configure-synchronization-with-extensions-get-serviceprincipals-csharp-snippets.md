---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.ServicePrincipals.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "id","appId","displayName" };
	requestConfiguration.QueryParameters.Filter = "startswith(displayName,%20'salesforce')";
	requestConfiguration.Headers.Add("Authorization", "Bearer {Token}");
});


```