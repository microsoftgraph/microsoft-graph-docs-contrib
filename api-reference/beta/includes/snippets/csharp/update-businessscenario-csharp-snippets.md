---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var businessScenario = new BusinessScenario
{
	OwnerAppIds = new List<String>()
	{
		"44109254-4b2b-7a33-76ee-c890a167b295",
		"13eb9d8b-1d63-4153-9417-3a69ab200a78"
	}
};

await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"]
	.Request()
	.UpdateAsync(businessScenario);

```