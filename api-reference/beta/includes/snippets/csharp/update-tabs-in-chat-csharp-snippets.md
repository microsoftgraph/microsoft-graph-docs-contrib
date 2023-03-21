---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TeamsTab
{
	DisplayName = "My Contoso Tab - updated again",
};
var result = await graphClient.Chats["{chat-id}"].Tabs["{teamsTab-id}"].PatchAsync(requestBody);


```