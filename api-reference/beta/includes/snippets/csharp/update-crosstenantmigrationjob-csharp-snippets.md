---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CrossTenantMigrationJob
{
	CompleteAfterDateTime = DateTimeOffset.Parse("2025-05-22T17:14:52Z"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.Migrations.CrossTenantMigrationJobs["{crossTenantMigrationJob-id}"].PatchAsync(requestBody);


```