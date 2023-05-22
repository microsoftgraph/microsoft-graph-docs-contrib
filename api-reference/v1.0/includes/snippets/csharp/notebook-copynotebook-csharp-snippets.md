---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Onenote.Notebooks.Item.CopyNotebook.CopyNotebookPostRequestBody
{
	GroupId = "groupId-value",
	RenameAs = "renameAs-value",
};
var result = await graphClient.Me.Onenote.Notebooks["{notebook-id}"].CopyNotebook.PostAsync(requestBody);


```