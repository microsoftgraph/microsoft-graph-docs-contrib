---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new RemoteNetwork
{
	Name = "Bellevue branch w/ fwd profile",
	Region = Region.CanadaEast,
	ForwardingProfiles = new List<ForwardingProfile>
	{
		new ForwardingProfile
		{
			Id = "1adaf535-1e31-4e14-983f-2270408162bf",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.Connectivity.RemoteNetworks.PostAsync(requestBody);


```