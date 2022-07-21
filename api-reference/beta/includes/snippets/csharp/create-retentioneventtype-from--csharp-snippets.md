---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var retentionEventType = new Microsoft.Graph.Security.RetentionEventType
{
	DisplayName = "String",
	Description = "String",
	CreatedBy = new IdentitySet
	{
	}
};

await graphClient.Security.TriggerTypes.RetentionEventTypes
	.Request()
	.AddAsync(retentionEventType);

```