---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Channel
{
	DisplayName = "Architecture Discussion",
	Description = "This channel is where we debate all future architecture plans",
	MembershipType = ChannelMembershipType.Standard,
};
var result = await graphClient.Teams["{team-id}"].Channels.PostAsync(requestBody);


```