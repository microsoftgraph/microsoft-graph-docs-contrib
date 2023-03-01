---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Domain
{
	IsDefault = true,
	SupportedServices = new List<string>
	{
		"Email",
		"OfficeCommunicationsOnline",
	},
};
var result = await graphClient.Domains["{domain-id}"].PatchAsync(requestBody);


```