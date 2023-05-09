---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewOnlineMeeting()
lobbyBypassSettings := graphmodels.NewLobbyBypassSettings()
isDialInBypassEnabled := true
lobbyBypassSettings.SetIsDialInBypassEnabled(&isDialInBypassEnabled) 
requestBody.SetLobbyBypassSettings(lobbyBypassSettings)

result, err := graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Patch(context.Background(), requestBody, nil)


```