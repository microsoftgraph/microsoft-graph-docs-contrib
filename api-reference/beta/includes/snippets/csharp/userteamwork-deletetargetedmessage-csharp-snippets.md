---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Users.Item.Teamwork.DeleteTargetedMessage;

var requestBody = new DeleteTargetedMessagePostRequestBody
{
	TeamId = "3Aeeaa4e946d674c4f8d4dded613780f45@thread.v2",
	ChannelId = "19:eeaa4e946d674c4f8d4dded613780f45@thread.v2",
	MessageId = "1580849738240",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Users["{user-id}"].Teamwork.DeleteTargetedMessage.PostAsync(requestBody);


```