---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Users.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "endswith(mail,'a@contoso.com')";
	requestConfiguration.QueryParameters.Orderby = new string []{ "userPrincipalName" };
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```