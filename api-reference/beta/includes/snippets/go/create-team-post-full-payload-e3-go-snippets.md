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


requestBody := graphmodels.NewTeam()
visibility := graphmodels.PRIVATE_TEAMVISIBILITYTYPE 
requestBody.SetVisibility(&visibility) 
displayName := "Sample Engineering Team"
requestBody.SetDisplayName(&displayName) 
description := "This is a sample engineering team, used to showcase the range of properties supported by this API"
requestBody.SetDescription(&description) 


channel := graphmodels.NewChannel()
displayName := "Announcements 📢"
channel.SetDisplayName(&displayName) 
isFavoriteByDefault := true
channel.SetIsFavoriteByDefault(&isFavoriteByDefault) 
description := "This is a sample announcements channel that is favorited by default. Use this channel to make important team, product, and service announcements."
channel.SetDescription(&description) 
channel1 := graphmodels.NewChannel()
displayName := "Training 🏋️"
channel1.SetDisplayName(&displayName) 
isFavoriteByDefault := true
channel1.SetIsFavoriteByDefault(&isFavoriteByDefault) 
description := "This is a sample training channel, that is favorited by default, and contains an example of pinned website and YouTube tabs."
channel1.SetDescription(&description) 


teamsTab := graphmodels.NewTeamsTab()
displayName := "A Pinned Website"
teamsTab.SetDisplayName(&displayName) 
configuration := graphmodels.NewTeamsTabConfiguration()
contentUrl := "https://learn.microsoft.com/microsoftteams/microsoft-teams"
configuration.SetContentUrl(&contentUrl) 
teamsTab.SetConfiguration(configuration)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.web')", 
}
teamsTab.SetAdditionalData(additionalData)
teamsTab1 := graphmodels.NewTeamsTab()
displayName := "A Pinned YouTube Video"
teamsTab1.SetDisplayName(&displayName) 
configuration := graphmodels.NewTeamsTabConfiguration()
contentUrl := "https://tabs.teams.microsoft.com/Youtube/Home/YoutubeTab?videoId=X8krAMdGvCQ"
configuration.SetContentUrl(&contentUrl) 
websiteUrl := "https://www.youtube.com/watch?v=X8krAMdGvCQ"
configuration.SetWebsiteUrl(&websiteUrl) 
teamsTab1.SetConfiguration(configuration)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.youtube')", 
}
teamsTab1.SetAdditionalData(additionalData)

tabs := []graphmodels.TeamsTabable {
	teamsTab,
	teamsTab1,

}
channel1.SetTabs(tabs)
channel2 := graphmodels.NewChannel()
displayName := "Planning 📅 "
channel2.SetDisplayName(&displayName) 
description := "This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu."
channel2.SetDescription(&description) 
isFavoriteByDefault := false
channel2.SetIsFavoriteByDefault(&isFavoriteByDefault) 
channel3 := graphmodels.NewChannel()
displayName := "Issues and Feedback 🐞"
channel3.SetDisplayName(&displayName) 
description := "This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu."
channel3.SetDescription(&description) 

channels := []graphmodels.Channelable {
	channel,
	channel1,
	channel2,
	channel3,

}
requestBody.SetChannels(channels)
memberSettings := graphmodels.NewTeamMemberSettings()
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
requestBody.SetMemberSettings(memberSettings)
guestSettings := graphmodels.NewTeamGuestSettings()
allowCreateUpdateChannels := false
guestSettings.SetAllowCreateUpdateChannels(&allowCreateUpdateChannels) 
allowDeleteChannels := false
guestSettings.SetAllowDeleteChannels(&allowDeleteChannels) 
requestBody.SetGuestSettings(guestSettings)
funSettings := graphmodels.NewTeamFunSettings()
allowGiphy := true
funSettings.SetAllowGiphy(&allowGiphy) 
giphyContentRating := graphmodels.MODERATE_GIPHYRATINGTYPE 
funSettings.SetGiphyContentRating(&giphyContentRating) 
allowStickersAndMemes := true
funSettings.SetAllowStickersAndMemes(&allowStickersAndMemes) 
allowCustomMemes := true
funSettings.SetAllowCustomMemes(&allowCustomMemes) 
requestBody.SetFunSettings(funSettings)
messagingSettings := graphmodels.NewTeamMessagingSettings()
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
requestBody.SetMessagingSettings(messagingSettings)
discoverySettings := graphmodels.NewTeamDiscoverySettings()
showInTeamsSearchAndSuggestions := true
discoverySettings.SetShowInTeamsSearchAndSuggestions(&showInTeamsSearchAndSuggestions) 
requestBody.SetDiscoverySettings(discoverySettings)


teamsAppInstallation := graphmodels.NewTeamsAppInstallation()
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.vsts')", 
}
teamsAppInstallation.SetAdditionalData(additionalData)
teamsAppInstallation1 := graphmodels.NewTeamsAppInstallation()
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('1542629c-01b3-4a6d-8f76-1938b779e48d')", 
}
teamsAppInstallation1.SetAdditionalData(additionalData)

installedApps := []graphmodels.TeamsAppInstallationable {
	teamsAppInstallation,
	teamsAppInstallation1,

}
requestBody.SetInstalledApps(installedApps)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/teamsTemplates('standard')", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Teams().Post(context.Background(), requestBody, nil)


```