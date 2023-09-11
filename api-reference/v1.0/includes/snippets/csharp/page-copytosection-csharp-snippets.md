---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Onenote.Pages.Item.CopyToSection.CopyToSectionPostRequestBody
{
	Id = "id-value",
	GroupId = "groupId-value",
};
var result = await graphClient.Me.Onenote.Pages["{onenotePage-id}"].CopyToSection.PostAsync(requestBody);


```