---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Messages.Item.CreateReplyAll.CreateReplyAllPostRequestBody
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
	Comment = "if the project gets approved, please take a look at the attached guidelines before you decide on the name.",
};
var result = await graphClient.Me.Messages["{message-id}"].CreateReplyAll.PostAsync(requestBody);


```