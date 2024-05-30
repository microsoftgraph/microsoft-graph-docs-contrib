---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Groups.Item.Threads.Item.Reply;
using Microsoft.Graph.Models;

var requestBody = new ReplyPostRequestBody
{
	Post = new Post
	{
		Body = new ItemBody
		{
			ContentType = BodyType.Text,
			Content = "I attached a reference to a file on OneDrive.",
		},
		Attachments = new List<Attachment>
		{
			new ReferenceAttachment
			{
				OdataType = "#microsoft.graph.referenceAttachment",
				Name = "Personal pictures",
				AdditionalData = new Dictionary<string, object>
				{
					{
						"sourceUrl" , "https://contoso.com/personal/mario_contoso_net/Documents/Pics"
					},
					{
						"providerType" , "oneDriveConsumer"
					},
					{
						"permission" , "Edit"
					},
					{
						"isFolder" , "True"
					},
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"].Reply.PostAsync(requestBody);


```