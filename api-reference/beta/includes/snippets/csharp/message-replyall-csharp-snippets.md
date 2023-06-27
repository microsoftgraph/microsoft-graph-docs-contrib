---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Messages.Item.ReplyAll.ReplyAllPostRequestBody
{
	Message = new Message
	{
		Attachments = new List<Attachment>
		{
			new FileAttachment
			{
				OdataType = "#microsoft.graph.fileAttachment",
				Name = "guidelines.txt",
				ContentBytes = Convert.FromBase64String("bWFjIGFuZCBjaGVlc2UgdG9kYXk="),
			},
		},
	},
	Comment = "Please take a look at the attached guidelines before you decide on the name.",
};
await graphClient.Me.Messages["{message-id}"].ReplyAll.PostAsync(requestBody);


```