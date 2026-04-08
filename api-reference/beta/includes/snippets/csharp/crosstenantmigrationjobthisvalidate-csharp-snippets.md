---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Solutions.Migrations.CrossTenantMigrationJobs.Validate;
using Microsoft.Graph.Beta.Models;

var requestBody = new ValidatePostRequestBody
{
	DisplayName = "Contoso_migration_validation_job",
	CompleteAfterDateTime = "2025-05-22T17:14:52Z",
	SourceTenantId = "12345678-1234-1234-1234-123456789012",
	ExchangeSettings = new ExchangeOnlineCrossTenantMigrationSettings
	{
		TargetDeliveryDomain = "fabrikam.com",
		SourceEndpoint = "EXOHandler",
	},
	Resources = new List<string>
	{
		"b5b8bc4f-0e36-4ad3-8ddf-248b68260b89",
		"ac87d040-a081-426c-a73b-81133f458a29",
	},
	Workloads = new List<string>
	{
		"Teams",
	},
	ResourceType = "Users",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.Migrations.CrossTenantMigrationJobs.Validate.PostAsync(requestBody);


```