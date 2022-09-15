---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTeam()
isMembershipLimitedToOwners := true
requestBody.SetIsMembershipLimitedToOwners(&isMembershipLimitedToOwners) 
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
discoverySettings := graphmodels.NewTeamDiscoverySettings()
showInTeamsSearchAndSuggestions := true
discoverySettings.SetShowInTeamsSearchAndSuggestions(&showInTeamsSearchAndSuggestions) 
requestBody.SetDiscoverySettings(discoverySettings)

graphClient.TeamsById("team-id").Patch(context.Background(), requestBody, nil)


```