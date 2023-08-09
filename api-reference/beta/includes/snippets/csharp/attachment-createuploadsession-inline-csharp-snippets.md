---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Messages.Item.Attachments.CreateUploadSession.CreateUploadSessionPostRequestBody
{
	AttachmentItem = new AttachmentItem
	{
		AttachmentType = AttachmentType.File,
		Name = "scenary",
		Size = 7208534L,
		IsInline = true,
		ContentId = "my_inline_picture",
	},
};
var result = await graphClient.Me.Messages["{message-id}"].Attachments.CreateUploadSession.PostAsync(requestBody);


```