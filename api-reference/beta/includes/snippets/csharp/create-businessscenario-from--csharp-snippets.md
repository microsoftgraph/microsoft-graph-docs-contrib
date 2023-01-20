---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var businessScenario = new BusinessScenario
{
	DisplayName = "Contoso Order Tracking",
	UniqueName = "com.contoso.apps.ordertracking"
};

await graphClient.Solutions.BusinessScenarios
	.Request()
	.AddAsync(businessScenario);

```