---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Onenote.Notebooks.GetNotebookFromWebUrl.GetNotebookFromWebUrlPostRequestBody
{
	WebUrl = "webUrl value",
};
var result = await graphClient.Me.Onenote.Notebooks.GetNotebookFromWebUrl.PostAsync(requestBody);


```