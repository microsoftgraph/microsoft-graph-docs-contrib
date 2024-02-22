---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Sites.Item.Lists.Item.ContentTypes.AddCopy;

var requestBody = new AddCopyPostRequestBody
{
	ContentType = "https://graph.microsoft.com/v1.0/sites/{site-id}/contentTypes/0x0101",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Sites["{site-id}"].Lists["{list-id}"].ContentTypes.AddCopy.PostAsync(requestBody);


```