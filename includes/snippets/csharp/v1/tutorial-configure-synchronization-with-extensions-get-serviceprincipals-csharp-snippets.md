---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.ServicePrincipals.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "id","appId","displayName" };
	requestConfiguration.QueryParameters.Filter = "startswith(displayName, 'salesforce')";
	requestConfiguration.Headers.Add("Authorization", "Bearer {Token}");
});


```