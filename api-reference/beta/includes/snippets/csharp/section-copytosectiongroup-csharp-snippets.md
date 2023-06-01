---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Onenote.Sections.Item.CopyToSectionGroup.CopyToSectionGroupPostRequestBody
{
	Id = "id-value",
	GroupId = "groupId-value",
	RenameAs = "renameAs-value",
};
var result = await graphClient.Me.Onenote.Sections["{onenoteSection-id}"].CopyToSectionGroup.PostAsync(requestBody);


```