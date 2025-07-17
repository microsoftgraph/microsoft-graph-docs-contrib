---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new VirtualEventPresenter
{
	Identity = new CommunicationsUserIdentity
	{
		OdataType = "#microsoft.graph.communicationsUserIdentity",
		Id = "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.VirtualEvents.Townhalls["{virtualEventTownhall-id}"].Presenters.PostAsync(requestBody);


```