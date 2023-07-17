---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Communications.Calls.Item.AddLargeGalleryView.AddLargeGalleryViewPostRequestBody
{
	ClientContext = "785f4929-92ca-497b-863f-c778c77c9758",
};
var result = await graphClient.Communications.Calls["{call-id}"].AddLargeGalleryView.PostAsync(requestBody);


```