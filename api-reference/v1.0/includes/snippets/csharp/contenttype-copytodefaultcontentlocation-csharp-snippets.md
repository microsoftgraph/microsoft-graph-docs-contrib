---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Sites.Item.ContentTypes.Item.CopyToDefaultContentLocation;
using Microsoft.Graph.Models;

var requestBody = new CopyToDefaultContentLocationPostRequestBody
{
	SourceFile = new ItemReference
	{
		SharepointIds = new SharepointIds
		{
			ListId = "e2ecf63b-b0fd-48f7-a54a-d8c15479e3b0",
			ListItemId = "2",
		},
	},
	DestinationFileName = "newname.txt",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"].CopyToDefaultContentLocation.PostAsync(requestBody);


```