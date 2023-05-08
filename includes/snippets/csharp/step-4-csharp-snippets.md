---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Users["{user-id}"].Chats["{chat-id}"].Messages.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Top = 2;
	requestConfiguration.QueryParameters.Filter = "lastModifiedDateTime gt 2021-03-17T07:13:28.000z";
	requestConfiguration.QueryParameters.Orderby = new string []{ "createdDateTime desc" };
});


```