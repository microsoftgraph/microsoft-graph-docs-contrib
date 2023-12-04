---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Communications.Calls.Item.AddLargeGalleryView;

var requestBody = new AddLargeGalleryViewPostRequestBody
{
	ClientContext = "785f4929-92ca-497b-863f-c778c77c9758",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Communications.Calls["{call-id}"].AddLargeGalleryView.PostAsync(requestBody);


```