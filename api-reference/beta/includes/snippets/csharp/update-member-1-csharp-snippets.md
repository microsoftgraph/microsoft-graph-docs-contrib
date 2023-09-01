---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AadUserConversationMember
{
	OdataType = "#microsoft.graph.aadUserConversationMember",
	Roles = new List<string>
	{
		"owner",
	},
};
var result = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Members["{conversationMember-id}"].PatchAsync(requestBody);


```