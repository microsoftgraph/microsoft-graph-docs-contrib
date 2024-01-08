---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.Messages.Item.Attachments.CreateUploadSession;
using Microsoft.Graph.Beta.Models;

var requestBody = new CreateUploadSessionPostRequestBody
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Messages["{message-id}"].Attachments.CreateUploadSession.PostAsync(requestBody);


```