---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new IpNamedLocation
{
	OdataType = "#microsoft.graph.ipNamedLocation",
	DisplayName = "Untrusted named location with only IPv4 address",
	IsTrusted = false,
	IpRanges = new List<IpRange>
	{
		new IPv4CidrRange
		{
			OdataType = "#microsoft.graph.iPv4CidrRange",
			CidrAddress = "6.5.4.3/18",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.ConditionalAccess.NamedLocations["{namedLocation-id}"].PatchAsync(requestBody);


```