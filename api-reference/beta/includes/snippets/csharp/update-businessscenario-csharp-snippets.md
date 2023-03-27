---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BusinessScenario
{
	OwnerAppIds = new List<string>
	{
		"44109254-4b2b-7a33-76ee-c890a167b295",
		"13eb9d8b-1d63-4153-9417-3a69ab200a78",
	},
};
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].PatchAsync(requestBody);


```