---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new VirtualEventPresenter
{
	Identity = new CommunicationsGuestIdentity
	{
		OdataType = "#microsoft.graph.communicationsGuestIdentity",
		DisplayName = "Guest Speaker",
		Email = "guest.speaker@fabrikam.com",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.VirtualEvents.Townhalls["{virtualEventTownhall-id}"].Presenters.PostAsync(requestBody);


```