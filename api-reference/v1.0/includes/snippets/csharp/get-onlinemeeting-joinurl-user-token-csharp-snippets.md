---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onlineMeetings = await graphClient.Me.OnlineMeetings
	.Request()
	.Filter("JoinWebUrl eq 'https://teams.microsoft.com/l/meetup-join/19:meeting_MGQ4MDQyNTEtNTQ2NS00YjQxLTlkM2EtZWVkODYxODYzMmY2@thread.v2/0?context={\"Tid\":\"909c6581-5130-43e9-88f3-fcb3582cde37\",\"Oid\":\"dc17674c-81d9-4adb-bfb2-8f6a442e4622\"}'")
	.GetAsync();

```