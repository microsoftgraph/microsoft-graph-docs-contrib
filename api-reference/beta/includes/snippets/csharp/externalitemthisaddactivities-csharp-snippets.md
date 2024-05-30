---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.External.Connections.Item.Items.Item.MicrosoftGraphExternalConnectorsAddActivities;
using Microsoft.Graph.Beta.Models.ExternalConnectors;

var requestBody = new AddActivitiesPostRequestBody
{
	Activities = new List<ExternalActivity>
	{
		new ExternalActivity
		{
			OdataType = "#microsoft.graph.externalConnectors.externalActivity",
			Type = ExternalActivityType.Created,
			StartDateTime = DateTimeOffset.Parse("2021-04-06T18:04:31.033Z"),
			PerformedBy = new Identity
			{
				Type = IdentityType.User,
				Id = "1f0c997e-99f7-43f1-8cca-086f8d42be8d",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.Connections["{externalConnection-id}"].Items["{externalItem-id}"].MicrosoftGraphExternalConnectorsAddActivities.PostAsAddActivitiesPostResponseAsync(requestBody);


```