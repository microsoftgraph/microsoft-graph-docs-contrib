---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.ManagedTenants;

var requestBody = new TenantTag
{
	DisplayName = "Onboarding",
	Description = "Tenants that we are currently onboarding",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.TenantRelationships.ManagedTenants.TenantTags["{tenantTag-id}"].PatchAsync(requestBody);


```