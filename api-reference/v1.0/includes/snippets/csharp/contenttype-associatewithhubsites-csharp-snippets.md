---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Sites.Item.ContentTypes.Item.AssociateWithHubSites.AssociateWithHubSitesPostRequestBody
{
	HubSiteUrls = new List<string>
	{
		"https://graph.microsoft.com/v1.0/sites/{site-id}",
	},
	PropagateToExistingLists = false,
};
await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"].AssociateWithHubSites.PostAsync(requestBody);


```