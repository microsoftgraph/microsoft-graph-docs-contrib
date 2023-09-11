---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Onenote.Notebooks.GetNotebookFromWebUrl.GetNotebookFromWebUrlPostRequestBody
{
	WebUrl = "webUrl value",
};
var result = await graphClient.Me.Onenote.Notebooks.GetNotebookFromWebUrl.PostAsync(requestBody);


```