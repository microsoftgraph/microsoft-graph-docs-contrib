---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Networkaccess.BranchSite
{
	Name = "My updated branch",
};
var result = await graphClient.NetworkAccess.Connectivity.Branches["{branchSite-id}"].PatchAsync(requestBody);


```