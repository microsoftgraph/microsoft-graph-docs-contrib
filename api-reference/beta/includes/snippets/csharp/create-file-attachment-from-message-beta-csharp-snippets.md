---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new FileAttachment
{
	OdataType = "#microsoft.graph.fileAttachment",
	Name = "smile",
	ContentBytes = Convert.FromBase64String("a0b1c76de9f7="),
};
var result = await graphClient.Me.Messages["{message-id}"].Attachments.PostAsync(requestBody);


```