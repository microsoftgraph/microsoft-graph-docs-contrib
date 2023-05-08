---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Message
{
	IsRead = true,
};
var result = await graphClient.Me.Messages["{message-id}"].PatchAsync(requestBody);


```