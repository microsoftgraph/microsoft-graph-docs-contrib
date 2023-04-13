---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Onenote.Sections.Item.CopyToSectionGroup.CopyToSectionGroupPostRequestBody
{
	Id = "id-value",
	GroupId = "groupId-value",
	RenameAs = "renameAs-value",
};
var result = await graphClient.Me.Onenote.Sections["{onenoteSection-id}"].CopyToSectionGroup.PostAsync(requestBody);


```