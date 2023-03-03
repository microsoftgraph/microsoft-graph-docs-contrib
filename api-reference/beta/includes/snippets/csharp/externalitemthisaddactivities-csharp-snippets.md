---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Connections.Item.Items.Item.ExternalConnectorsAddActivities.AddActivitiesPostRequestBody
{
	Activities = new List<Microsoft.Graph.Beta.Models.ExternalConnectors.ExternalActivity>
	{
		new Microsoft.Graph.Beta.Models.ExternalConnectors.ExternalActivity
		{
			OdataType = "#microsoft.graph.externalConnectors.externalActivity",
			Type = Microsoft.Graph.Beta.Models.ExternalConnectors.ExternalActivityType.Viewed,
			StartDateTime = DateTimeOffset.Parse("String (timestamp)"),
		},
	},
};
var result = await graphClient.Connections["{externalConnection-id}"].Items["{externalItem-id}"].ExternalConnectorsAddActivities.PostAsync(requestBody);


```