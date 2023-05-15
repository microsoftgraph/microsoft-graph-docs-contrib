---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Simulation
{
	Id = "2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc",
	Status = SimulationStatus.Excluded,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.etag" , "\"0100aa9b-0000-0100-0000-6396fa270000\""
		},
	},
};
var result = await graphClient.Security.AttackSimulation.Simulations["{simulation-id}"].PatchAsync(requestBody);


```