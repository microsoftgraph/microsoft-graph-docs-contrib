---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Networkaccess.BranchSite
{
	Name = "test branch - 11:50",
	Country = "United States",
	Region = Microsoft.Graph.Beta.Models.Networkaccess.Region.EastUS,
	BandwidthCapacity = 500L,
};
var result = await graphClient.NetworkAccess.Connectivity.Branches.PostAsync(requestBody);


```