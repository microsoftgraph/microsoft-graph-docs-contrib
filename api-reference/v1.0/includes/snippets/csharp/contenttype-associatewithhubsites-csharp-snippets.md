---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Sites.Item.ContentTypes.Item.AssociateWithHubSites;

var requestBody = new AssociateWithHubSitesPostRequestBody
{
	HubSiteUrls = new List<string>
	{
		"https://graph.microsoft.com/v1.0/sites/{site-id}",
	},
	PropagateToExistingLists = false,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"].AssociateWithHubSites.PostAsync(requestBody);


```