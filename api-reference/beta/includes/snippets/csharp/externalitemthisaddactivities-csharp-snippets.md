---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var activities = new List<Microsoft.Graph.ExternalConnectors.ExternalActivity>()
{
	new Microsoft.Graph.ExternalConnectors.ExternalActivity
	{
		Type = Microsoft.Graph.ExternalConnectors.ExternalActivityType.Viewed,
		StartDateTime = DateTimeOffset.Parse("String (timestamp)")
	}
};

await graphClient.Connections["{externalConnectors.externalConnection-id}"].Items["{externalConnectors.externalItem-id}"]
	.AddActivities(activities)
	.Request()
	.PostAsync();

```