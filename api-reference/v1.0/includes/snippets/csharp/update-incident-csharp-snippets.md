---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var incident = new Microsoft.Graph.Security.Incident
{
	Classification = Microsoft.Graph.Security.AlertClassification.TruePositive,
	Determination = Microsoft.Graph.Security.AlertDetermination.MultiStagedAttack,
	CustomTags = new List<String>()
	{
		"Demo"
	}
};

await graphClient.Security.Incidents["{security.incident-id}"]
	.Request()
	.UpdateAsync(incident);

```