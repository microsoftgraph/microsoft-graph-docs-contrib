---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Users["{user-id}"].Chats.GetAllMessages.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Top = 2;
});


```