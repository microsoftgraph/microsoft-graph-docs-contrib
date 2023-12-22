---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.Messages.Item.ReplyAll;
using Microsoft.Graph.Beta.Models;

var requestBody = new ReplyAllPostRequestBody
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.Messages["{message-id}"].ReplyAll.PostAsync(requestBody);


```