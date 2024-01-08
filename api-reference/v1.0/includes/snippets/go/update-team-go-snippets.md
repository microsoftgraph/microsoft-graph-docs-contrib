---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTeam()
memberSettings := graphmodels.NewTeamMemberSettings()
allowCreateUpdateChannels := true
memberSettings.SetAllowCreateUpdateChannels(&allowCreateUpdateChannels) 
requestBody.SetMemberSettings(memberSettings)
messagingSettings := graphmodels.NewTeamMessagingSettings()
allowUserEditMessages := true
messagingSettings.SetAllowUserEditMessages(&allowUserEditMessages) 
allowUserDeleteMessages := true
messagingSettings.SetAllowUserDeleteMessages(&allowUserDeleteMessages) 
requestBody.SetMessagingSettings(messagingSettings)
funSettings := graphmodels.NewTeamFunSettings()
allowGiphy := true
funSettings.SetAllowGiphy(&allowGiphy) 
giphyContentRating := graphmodels.STRICT_GIPHYRATINGTYPE 
funSettings.SetGiphyContentRating(&giphyContentRating) 
requestBody.SetFunSettings(funSettings)

teams, err := graphClient.Teams().ByTeamId("team-id").Patch(context.Background(), requestBody, nil)


```