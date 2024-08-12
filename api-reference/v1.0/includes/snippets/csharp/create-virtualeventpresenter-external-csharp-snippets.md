---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new VirtualEventPresenter
{
	Identity = new CommunicationsGuestIdentity
	{
		OdataType = "#microsoft.graph.communicationsGuestIdentity",
		DisplayName = "Guest Speaker",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"email" , "guest.speaker@fabrikam.com"
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.VirtualEvents.Webinars["{virtualEventWebinar-id}"].Presenters.PostAsync(requestBody);


```