---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnlineMeeting onlineMeeting = new OnlineMeeting();
LobbyBypassSettings lobbyBypassSettings = new LobbyBypassSettings();
lobbyBypassSettings.setIsDialInBypassEnabled(true);
onlineMeeting.setLobbyBypassSettings(lobbyBypassSettings);
OnlineMeeting result = graphClient.me().onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").patch(onlineMeeting);


```