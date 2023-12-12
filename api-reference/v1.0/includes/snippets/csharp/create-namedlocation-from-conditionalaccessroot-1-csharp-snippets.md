---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new IpNamedLocation
{
	OdataType = "#microsoft.graph.ipNamedLocation",
	DisplayName = "Untrusted IP named location",
	IsTrusted = false,
	IpRanges = new List<IpRange>
	{
		new IPv4CidrRange
		{
			OdataType = "#microsoft.graph.iPv4CidrRange",
			CidrAddress = "12.34.221.11/22",
		},
		new IPv6CidrRange
		{
			OdataType = "#microsoft.graph.iPv6CidrRange",
			CidrAddress = "2001:0:9d38:90d6:0:0:0:0/63",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.ConditionalAccess.NamedLocations.PostAsync(requestBody);


```