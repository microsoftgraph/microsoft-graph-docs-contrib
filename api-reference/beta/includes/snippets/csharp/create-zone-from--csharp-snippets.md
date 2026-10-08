---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new Zone
{
	DisplayName = "Production Zone",
	Description = "Zone for production environments",
	Environments = new List<EnvironmentObject>
	{
		new EnvironmentObject
		{
			Kind = EnvironmentKind.AwsAccount,
			Id = "181994123251",
		},
		new EnvironmentObject
		{
			Kind = EnvironmentKind.AwsAccount,
			Id = "326438728454",
		},
		new EnvironmentObject
		{
			Kind = EnvironmentKind.AzureSubscription,
			Id = "/subscriptions/02687862-a843-4846-81f0-efe9ef244daa",
		},
		new EnvironmentObject
		{
			Kind = EnvironmentKind.GcpProject,
			Id = "69483221284",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Zones.PostAsync(requestBody);


```