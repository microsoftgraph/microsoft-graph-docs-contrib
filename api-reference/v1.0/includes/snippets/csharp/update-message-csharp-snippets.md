---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Message
{
	Subject = "subject-value",
	Body = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "content-value",
	},
	InferenceClassification = InferenceClassificationType.Other,
};
var result = await graphClient.Me.Messages["{message-id}"].PatchAsync(requestBody);


```