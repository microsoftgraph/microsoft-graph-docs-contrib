---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Groups.Item.Threads.Item.Reply.ReplyPostRequestBody
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
			new Attachment
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
await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"].Reply.PostAsync(requestBody);


```