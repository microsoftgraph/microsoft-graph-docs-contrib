---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Me.Onenote.Pages.Item.CopyToSection;

var requestBody = new CopyToSectionPostRequestBody
{
	Id = "id-value",
	GroupId = "groupId-value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Onenote.Pages["{onenotePage-id}"].CopyToSection.PostAsync(requestBody);


```