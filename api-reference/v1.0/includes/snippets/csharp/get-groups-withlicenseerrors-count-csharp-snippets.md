---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Groups.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.Filter = "hasMembersWithLicenseErrors eq true";
	requestConfiguration.QueryParameters.Select = new string []{ "id","displayName" };
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```