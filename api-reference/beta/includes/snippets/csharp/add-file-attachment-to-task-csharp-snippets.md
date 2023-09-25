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
	ContentBytes = Convert.FromBase64String("bWFjIGFuZCBjaGVlc2UgdG9kYXk="),
};
var result = await graphClient.Me.Outlook.Tasks["{outlookTask-id}"].Attachments.PostAsync(requestBody);


```