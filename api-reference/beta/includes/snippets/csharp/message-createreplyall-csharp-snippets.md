---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Messages.Item.CreateReplyAll.CreateReplyAllPostRequestBody
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
	Comment = "if the project gets approved, please take a look at the attached guidelines before you decide on the name.",
};
var result = await graphClient.Me.Messages["{message-id}"].CreateReplyAll.PostAsync(requestBody);


```