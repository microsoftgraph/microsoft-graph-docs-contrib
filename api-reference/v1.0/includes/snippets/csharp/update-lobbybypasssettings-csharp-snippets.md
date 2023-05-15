---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OnlineMeeting
{
	LobbyBypassSettings = new LobbyBypassSettings
	{
		IsDialInBypassEnabled = true,
	},
};
var result = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].PatchAsync(requestBody);


```