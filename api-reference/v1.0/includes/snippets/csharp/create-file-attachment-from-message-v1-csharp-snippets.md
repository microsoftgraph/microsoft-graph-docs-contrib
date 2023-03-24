---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Attachment
{
	OdataType = "#microsoft.graph.fileAttachment",
	Name = "smile",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"contentBytes" , "R0lGODdhEAYEAA7"
		},
	},
};
var result = await graphClient.Me.Messages["{message-id}"].Attachments.PostAsync(requestBody);


```