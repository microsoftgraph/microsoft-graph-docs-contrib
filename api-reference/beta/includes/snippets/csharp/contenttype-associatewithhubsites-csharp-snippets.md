---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Sites.Item.ContentTypes.Item.AssociateWithHubSites.AssociateWithHubSitesPostRequestBody
{
	HubSiteUrls = new List<string>
	{
		"https://graph.microsoft.com/beta/sites/id",
	},
	PropagateToExistingLists = false,
};
await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"].AssociateWithHubSites.PostAsync(requestBody);


```