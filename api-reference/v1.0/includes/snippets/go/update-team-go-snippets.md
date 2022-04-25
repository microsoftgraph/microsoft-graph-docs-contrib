---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewTeam()
memberSettings := msgraphsdk.NewTeamMemberSettings()
requestBody.SetMemberSettings(memberSettings)
allowCreateUpdateChannels := true
memberSettings.SetAllowCreateUpdateChannels(&allowCreateUpdateChannels)
messagingSettings := msgraphsdk.NewTeamMessagingSettings()
requestBody.SetMessagingSettings(messagingSettings)
allowUserEditMessages := true
messagingSettings.SetAllowUserEditMessages(&allowUserEditMessages)
allowUserDeleteMessages := true
messagingSettings.SetAllowUserDeleteMessages(&allowUserDeleteMessages)
funSettings := msgraphsdk.NewTeamFunSettings()
requestBody.SetFunSettings(funSettings)
allowGiphy := true
funSettings.SetAllowGiphy(&allowGiphy)
giphyContentRating := "strict"
funSettings.SetGiphyContentRating(&giphyContentRating)
options := &msgraphsdk.TeamRequestBuilderPatchOptions{
	Body: requestBody,
}
teamId := "team-id"
graphClient.TeamsById(&teamId).Patch(options)


```