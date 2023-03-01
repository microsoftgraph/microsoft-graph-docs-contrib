---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Messages.Item.ReplyAll.ReplyAllPostRequestBody
{
	Message = new Message
	{
		Attachments = new List<Attachment>
		{
			new Attachment
			{
				OdataType = "#microsoft.graph.fileAttachment",
				Name = "guidelines.txt",
				AdditionalData = new Dictionary<string, object>
				{
					{
						"contentBytes" , "bWFjIGFuZCBjaGVlc2UgdG9kYXk="
					},
				},
			},
		},
	},
	Comment = "Please take a look at the attached guidelines before you decide on the name.",
};
await graphClient.Me.Messages["{message-id}"].ReplyAll.PostAsync(requestBody);


```