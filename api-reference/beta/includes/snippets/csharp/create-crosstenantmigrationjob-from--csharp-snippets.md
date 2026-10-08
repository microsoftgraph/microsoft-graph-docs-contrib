---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CrossTenantMigrationJob
{
	DisplayName = "xtmigration_user_req_1",
	CompleteAfterDateTime = DateTimeOffset.Parse("2024-12-09T22:48:03.092Z"),
	SourceTenantId = "12345678-1234-1234-1234-123456789012",
	ExchangeSettings = new ExchangeOnlineCrossTenantMigrationSettings
	{
		TargetDeliveryDomain = "xtmigration.onmicrosoft.com",
		SourceEndpoint = "sampleEndpointText",
	},
	Resources = new List<string>
	{
		"4dd550d9-9ea2-4e71-a16b-60b1d1c4f506",
		"63f15b55-f61a-49cb-a599-2e3d233afb2c",
		"41d94bac-3a53-47d6-a89e-583830104e15",
	},
	ResourceType = "Users",
	Workloads = new List<string>
	{
		"Teams",
		"Exchange",
		"ODSP",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.Migrations.CrossTenantMigrationJobs.PostAsync(requestBody);


```