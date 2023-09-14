---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new FileAttachment
{
	OdataType = "#microsoft.graph.fileAttachment",
	Name = "menu.txt",
	ContentBytes = Convert.FromBase64String("base64bWFjIGFuZCBjaGVlc2UgdG9kYXk="),
};
var result = await graphClient.Me.Events["{event-id}"].Attachments.PostAsync(requestBody);


```