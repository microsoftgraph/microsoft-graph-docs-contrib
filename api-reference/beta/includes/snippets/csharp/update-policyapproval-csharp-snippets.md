---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.WindowsUpdates;

var requestBody = new PolicyApproval
{
	OdataType = "#microsoft.graph.windowsUpdates.policyApproval",
	CatalogEntryId = "1d8864c1-531f-4d5b-8225-8653ef4316d8",
	Status = ApprovalStatus.Suspended,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Windows.Updates.Policies["{policy-id}"].Approvals["{policyApproval-id}"].PatchAsync(requestBody);


```