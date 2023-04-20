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


requestBody := graphmodels.NewTeamsAppInstallation()
consentedPermissionSet := graphmodels.NewTeamsAppPermissionSet()


teamsAppResourceSpecificPermission := graphmodels.NewTeamsAppResourceSpecificPermission()
permissionValue := "OnlineMeeting.ReadBasic.Chat"
teamsAppResourceSpecificPermission.SetPermissionValue(&permissionValue) 
permissionType := graphmodels.DELEGATED_TEAMSAPPRESOURCESPECIFICPERMISSIONTYPE 
teamsAppResourceSpecificPermission.SetPermissionType(&permissionType) 
teamsAppResourceSpecificPermission1 := graphmodels.NewTeamsAppResourceSpecificPermission()
permissionValue := "OnlineMeetingIncomingAudio.Detect.Chat"
teamsAppResourceSpecificPermission1.SetPermissionValue(&permissionValue) 
permissionType := graphmodels.DELEGATED_TEAMSAPPRESOURCESPECIFICPERMISSIONTYPE 
teamsAppResourceSpecificPermission1.SetPermissionType(&permissionType) 
teamsAppResourceSpecificPermission2 := graphmodels.NewTeamsAppResourceSpecificPermission()
permissionValue := "ChatMember.Read.Chat"
teamsAppResourceSpecificPermission2.SetPermissionValue(&permissionValue) 
permissionType := graphmodels.APPLICATION_TEAMSAPPRESOURCESPECIFICPERMISSIONTYPE 
teamsAppResourceSpecificPermission2.SetPermissionType(&permissionType) 
teamsAppResourceSpecificPermission3 := graphmodels.NewTeamsAppResourceSpecificPermission()
permissionValue := "ChatMessage.Read.Chat"
teamsAppResourceSpecificPermission3.SetPermissionValue(&permissionValue) 
permissionType := graphmodels.APPLICATION_TEAMSAPPRESOURCESPECIFICPERMISSIONTYPE 
teamsAppResourceSpecificPermission3.SetPermissionType(&permissionType) 

resourceSpecificPermissions := []graphmodels.TeamsAppResourceSpecificPermissionable {
	teamsAppResourceSpecificPermission,
	teamsAppResourceSpecificPermission1,
	teamsAppResourceSpecificPermission2,
	teamsAppResourceSpecificPermission3,

}
consentedPermissionSet.SetResourceSpecificPermissions(resourceSpecificPermissions)
requestBody.SetConsentedPermissionSet(consentedPermissionSet)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/appCatalogs/teamsApps/2b524e28-95ce-4c9b-9773-4a5bd6ec1770", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Chats().ByChatId("chat-id").InstalledApps().Post(context.Background(), requestBody, nil)


```