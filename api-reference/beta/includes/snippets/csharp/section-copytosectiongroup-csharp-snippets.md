---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.Onenote.Sections.Item.CopyToSectionGroup;

var requestBody = new CopyToSectionGroupPostRequestBody
{
	Id = "id-value",
	GroupId = "groupId-value",
	RenameAs = "renameAs-value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Onenote.Sections["{onenoteSection-id}"].CopyToSectionGroup.PostAsync(requestBody);


```