---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.TenantGovernanceServices;

var requestBody = new GovernanceInvitation
{
	GoverningTenantId = "aaaabbbb-0000-cccc-1111-dddd2222eeee",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.TenantGovernance.GovernanceInvitations.PostAsync(requestBody);


```