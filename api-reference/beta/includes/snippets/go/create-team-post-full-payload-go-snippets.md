---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewTeam()
visibility := "Private"
requestBody.SetVisibility(&visibility)
displayName := "Sample Engineering Team"
requestBody.SetDisplayName(&displayName)
description := "This is a sample engineering team, used to showcase the range of properties supported by this API"
requestBody.SetDescription(&description)
requestBody.SetChannels( []Channel {
	msgraphsdk.NewChannel(),
	SetAdditionalData(map[string]interface{}{
		"displayName": "Announcements 📢",
		"isFavoriteByDefault": true,
		"description": "This is a sample announcements channel that is favorited by default. Use this channel to make important team, product, and service announcements.",
	}
	msgraphsdk.NewChannel(),
	SetAdditionalData(map[string]interface{}{
		"displayName": "Training 🏋️",
		"isFavoriteByDefault": true,
		"description": "This is a sample training channel, that is favorited by default, and contains an example of pinned website and YouTube tabs.",
		"tabs":  []Object {
		}
	}
	msgraphsdk.NewChannel(),
	SetAdditionalData(map[string]interface{}{
		"displayName": "Planning 📅 ",
		"description": "This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu.",
		"isFavoriteByDefault": false,
	}
	msgraphsdk.NewChannel(),
	SetAdditionalData(map[string]interface{}{
		"displayName": "Issues and Feedback 🐞",
		"description": "This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu.",
	}
}
memberSettings := msgraphsdk.NewTeamMemberSettings()
requestBody.SetMemberSettings(memberSettings)
allowCreateUpdateChannels := true
memberSettings.SetAllowCreateUpdateChannels(&allowCreateUpdateChannels)
allowDeleteChannels := true
memberSettings.SetAllowDeleteChannels(&allowDeleteChannels)
allowAddRemoveApps := true
memberSettings.SetAllowAddRemoveApps(&allowAddRemoveApps)
allowCreateUpdateRemoveTabs := true
memberSettings.SetAllowCreateUpdateRemoveTabs(&allowCreateUpdateRemoveTabs)
allowCreateUpdateRemoveConnectors := true
memberSettings.SetAllowCreateUpdateRemoveConnectors(&allowCreateUpdateRemoveConnectors)
guestSettings := msgraphsdk.NewTeamGuestSettings()
requestBody.SetGuestSettings(guestSettings)
allowCreateUpdateChannels := false
guestSettings.SetAllowCreateUpdateChannels(&allowCreateUpdateChannels)
allowDeleteChannels := false
guestSettings.SetAllowDeleteChannels(&allowDeleteChannels)
funSettings := msgraphsdk.NewTeamFunSettings()
requestBody.SetFunSettings(funSettings)
allowGiphy := true
funSettings.SetAllowGiphy(&allowGiphy)
giphyContentRating := "Moderate"
funSettings.SetGiphyContentRating(&giphyContentRating)
allowStickersAndMemes := true
funSettings.SetAllowStickersAndMemes(&allowStickersAndMemes)
allowCustomMemes := true
funSettings.SetAllowCustomMemes(&allowCustomMemes)
messagingSettings := msgraphsdk.NewTeamMessagingSettings()
requestBody.SetMessagingSettings(messagingSettings)
allowUserEditMessages := true
messagingSettings.SetAllowUserEditMessages(&allowUserEditMessages)
allowUserDeleteMessages := true
messagingSettings.SetAllowUserDeleteMessages(&allowUserDeleteMessages)
allowOwnerDeleteMessages := true
messagingSettings.SetAllowOwnerDeleteMessages(&allowOwnerDeleteMessages)
allowTeamMentions := true
messagingSettings.SetAllowTeamMentions(&allowTeamMentions)
allowChannelMentions := true
messagingSettings.SetAllowChannelMentions(&allowChannelMentions)
discoverySettings := msgraphsdk.NewTeamDiscoverySettings()
requestBody.SetDiscoverySettings(discoverySettings)
showInTeamsSearchAndSuggestions := true
discoverySettings.SetShowInTeamsSearchAndSuggestions(&showInTeamsSearchAndSuggestions)
requestBody.SetInstalledApps( []TeamsAppInstallation {
	msgraphsdk.NewTeamsAppInstallation(),
	SetAdditionalData(map[string]interface{}{
		"teamsApp@odata.bind": "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.vsts')",
	}
	msgraphsdk.NewTeamsAppInstallation(),
	SetAdditionalData(map[string]interface{}{
		"teamsApp@odata.bind": "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('1542629c-01b3-4a6d-8f76-1938b779e48d')",
	}
}
requestBody.SetAdditionalData(map[string]interface{}{
	"template@odata.bind": "https://graph.microsoft.com/beta/teamsTemplates('standard')",
}
options := &msgraphsdk.TeamsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Teams().Post(options)


```