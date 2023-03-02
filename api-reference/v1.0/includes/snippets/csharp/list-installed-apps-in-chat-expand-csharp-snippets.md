---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Chats["{chat-id}"].InstalledApps.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Expand = new string []{ "teamsAppDefinition($expand=bot)" };
});


```