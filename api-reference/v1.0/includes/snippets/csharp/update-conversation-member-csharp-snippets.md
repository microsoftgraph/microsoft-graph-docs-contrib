---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AadUserConversationMember
{
	OdataType = "#microsoft.graph.aadUserConversationMember",
	Roles = new List<string>
	{
		"owner",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Members["{conversationMember-id}"].PatchAsync(requestBody);


```