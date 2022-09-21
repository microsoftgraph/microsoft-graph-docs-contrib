---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewOnlineMeeting()
lobbyBypassSettings := graphmodels.NewLobbyBypassSettings()
isDialInBypassEnabled := true
lobbyBypassSettings.SetIsDialInBypassEnabled(&isDialInBypassEnabled) 
requestBody.SetLobbyBypassSettings(lobbyBypassSettings)

graphClient.Me().OnlineMeetingsById("onlineMeeting-id").Patch(context.Background(), requestBody, nil)


```