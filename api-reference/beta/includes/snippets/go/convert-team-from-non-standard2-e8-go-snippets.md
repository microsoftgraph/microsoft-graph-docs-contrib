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
displayName := "My Class Team"
requestBody.SetDisplayName(&displayName) 
description := "My Class Team’s Description"
requestBody.SetDescription(&description) 


channel := graphmodels.NewChannel()
displayName := "Class Announcements 📢"
channel.SetDisplayName(&displayName) 
isFavoriteByDefault := true
channel.SetIsFavoriteByDefault(&isFavoriteByDefault) 
channel1 := graphmodels.NewChannel()
displayName := "Homework 🏋️"
channel1.SetDisplayName(&displayName) 
isFavoriteByDefault := true
channel1.SetIsFavoriteByDefault(&isFavoriteByDefault) 

channels := []graphmodels.Channelable {
	channel,
	channel1,

}
requestBody.SetChannels(channels)
memberSettings := graphmodels.NewTeamMemberSettings()
allowCreateUpdateChannels := false
memberSettings.SetAllowCreateUpdateChannels(&allowCreateUpdateChannels) 
allowDeleteChannels := false
memberSettings.SetAllowDeleteChannels(&allowDeleteChannels) 
allowAddRemoveApps := false
memberSettings.SetAllowAddRemoveApps(&allowAddRemoveApps) 
allowCreateUpdateRemoveTabs := false
memberSettings.SetAllowCreateUpdateRemoveTabs(&allowCreateUpdateRemoveTabs) 
allowCreateUpdateRemoveConnectors := false
memberSettings.SetAllowCreateUpdateRemoveConnectors(&allowCreateUpdateRemoveConnectors) 
requestBody.SetMemberSettings(memberSettings)


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
	"odataBind" : "https://graph.microsoft.com/beta/teamsTemplates('educationClass')", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Teams().Post(context.Background(), requestBody, nil)


```