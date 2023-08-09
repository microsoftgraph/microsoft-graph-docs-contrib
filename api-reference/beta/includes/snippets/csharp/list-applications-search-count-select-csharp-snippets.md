---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Applications.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Search = "\"displayName:Web\"";
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.Select = new string []{ "appId","identifierUris","displayName","publisherDomain","signInAudience" };
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```