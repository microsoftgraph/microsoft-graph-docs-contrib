---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new ForwardingProfile
{
	Associations = new List<Association>
	{
		new AssociatedBranch
		{
			OdataType = "#microsoft.graph.networkaccess.associatedBranch",
			BranchId = "88e5a488-92c3-45d6-ba56-e5cfa63677e8",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.ForwardingProfiles["{forwardingProfile-id}"].PatchAsync(requestBody);


```