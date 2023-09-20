---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Chats["{chat-id}"].Messages.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Top = 2;
	requestConfiguration.QueryParameters.Orderby = new string []{ "lastModifiedDateTime desc" };
	requestConfiguration.QueryParameters.Filter = "lastModifiedDateTime gt 2022-09-22T00:00:00.000Z and lastModifiedDateTime lt 2022-09-24T00:00:00.000Z";
});


```