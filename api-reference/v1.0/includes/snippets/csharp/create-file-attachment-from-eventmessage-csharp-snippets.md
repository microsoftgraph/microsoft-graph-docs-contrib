---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new FileAttachment
{
	OdataType = "microsoft.graph.fileAttachment",
	Name = "name-value",
	ContentType = "contentType-value",
	IsInline = false,
	ContentLocation = "contentLocation-value",
	ContentBytes = Convert.FromBase64String("base64-contentBytes-value"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Messages["{message-id}"].Attachments.PostAsync(requestBody);


```