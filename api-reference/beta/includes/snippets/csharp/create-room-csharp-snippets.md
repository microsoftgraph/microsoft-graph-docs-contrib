---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Room
{
	OdataType = "microsoft.graph.room",
	DisplayName = "Conf Room 4/3.3G11",
	ParentId = "46ef7aed-5d94-4fd4-ae03-b333bc7a6955",
	BookingType = BookingType.Standard,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Places.PostAsync(requestBody);


```