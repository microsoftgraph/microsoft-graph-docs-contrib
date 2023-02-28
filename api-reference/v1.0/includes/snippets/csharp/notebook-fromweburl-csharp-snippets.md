---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Onenote.Notebooks.MicrosoftGraphGetNotebookFromWebUrl.GetNotebookFromWebUrlPostRequestBody
{
	WebUrl = "webUrl value",
};
var result = await graphClient.Me.Onenote.Notebooks.MicrosoftGraphGetNotebookFromWebUrl.PostAsync(requestBody);


```