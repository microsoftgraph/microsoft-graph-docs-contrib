---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Networkaccess.ForwardingProfile
{
	Associations = new List<Microsoft.Graph.Beta.Models.Networkaccess.Association>
	{
		new Microsoft.Graph.Beta.Models.Networkaccess.AssociatedBranch
		{
			OdataType = "#microsoft.graph.networkaccess.associatedBranch",
			BranchId = "88e5a488-92c3-45d6-ba56-e5cfa63677e8",
		},
	},
};
var result = await graphClient.NetworkAccess.ForwardingProfiles["{forwardingProfile-id}"].PatchAsync(requestBody);


```