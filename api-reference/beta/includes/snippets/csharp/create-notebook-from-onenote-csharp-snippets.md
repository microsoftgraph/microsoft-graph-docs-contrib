---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Notebook
{
	DisplayName = "My Private notebook",
};
var result = await graphClient.Me.Onenote.Notebooks.PostAsync(requestBody);


```