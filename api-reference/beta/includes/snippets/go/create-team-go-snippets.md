---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTeamPostRequestBody()
additionalData := map[string]interface{}{
memberSettings := graphmodels.New()
	allowCreateUpdateChannels := true
memberSettings.SetAllowCreateUpdateChannels(&allowCreateUpdateChannels) 
	requestBody.SetMemberSettings(memberSettings)
messagingSettings := graphmodels.New()
	allowUserEditMessages := true
messagingSettings.SetAllowUserEditMessages(&allowUserEditMessages) 
	allowUserDeleteMessages := true
messagingSettings.SetAllowUserDeleteMessages(&allowUserDeleteMessages) 
	requestBody.SetMessagingSettings(messagingSettings)
funSettings := graphmodels.New()
	allowGiphy := true
funSettings.SetAllowGiphy(&allowGiphy) 
giphyContentRating := "strict"
funSettings.SetGiphyContentRating(&giphyContentRating) 
	requestBody.SetFunSettings(funSettings)
discoverySettings := graphmodels.New()
	showInTeamsSearchAndSuggestions := true
discoverySettings.SetShowInTeamsSearchAndSuggestions(&showInTeamsSearchAndSuggestions) 
	requestBody.SetDiscoverySettings(discoverySettings)
}
requestBody.SetAdditionalData(additionalData)

graphClient.GroupsById("group-id").Team().Put(requestBody)


```