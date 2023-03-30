---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.Incident
{
	Classification = Microsoft.Graph.Beta.Models.Security.AlertClassification.TruePositive,
	Determination = Microsoft.Graph.Beta.Models.Security.AlertDetermination.MultiStagedAttack,
	CustomTags = new List<string>
	{
		"Demo",
	},
};
var result = await graphClient.Security.Incidents["{incident-id}"].PatchAsync(requestBody);


```