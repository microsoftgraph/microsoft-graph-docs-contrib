---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewChat()
chatType := graphmodels.ONEONONE_CHATTYPE 
requestBody.SetChatType(&chatType) 


conversationMember := graphmodels.NewAadUserConversationMember()
roles := []string {
	"owner",
}
conversationMember.SetRoles(roles)
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/v1.0/users('4b822dfc-2864-44e6-aa1e-7e0e8552168f')", 
}
conversationMember.SetAdditionalData(additionalData)
conversationMember1 := graphmodels.NewAadUserConversationMember()
roles := []string {
	"owner",
}
conversationMember1.SetRoles(roles)
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/v1.0/users('6d1e1501-7a3d-45b7-b71b-68d372e5ce14')", 
}
conversationMember1.SetAdditionalData(additionalData)

members := []graphmodels.ConversationMemberable {
	conversationMember,
	conversationMember1,
}
requestBody.SetMembers(members)


teamsAppInstallation := graphmodels.NewTeamsAppInstallation()
consentedPermissionSet := graphmodels.NewTeamsAppPermissionSet()


teamsAppResourceSpecificPermission := graphmodels.NewTeamsAppResourceSpecificPermission()
permissionValue := "ChatMessage.Read.Chat"
teamsAppResourceSpecificPermission.SetPermissionValue(&permissionValue) 
permissionType := graphmodels.APPLICATION_TEAMSAPPRESOURCESPECIFICPERMISSIONTYPE 
teamsAppResourceSpecificPermission.SetPermissionType(&permissionType) 
teamsAppResourceSpecificPermission1 := graphmodels.NewTeamsAppResourceSpecificPermission()
permissionValue := "OnlineMeeting.ReadBasic.Chat"
teamsAppResourceSpecificPermission1.SetPermissionValue(&permissionValue) 
permissionType := graphmodels.APPLICATION_TEAMSAPPRESOURCESPECIFICPERMISSIONTYPE 
teamsAppResourceSpecificPermission1.SetPermissionType(&permissionType) 

resourceSpecificPermissions := []graphmodels.TeamsAppResourceSpecificPermissionable {
	teamsAppResourceSpecificPermission,
	teamsAppResourceSpecificPermission1,
}
consentedPermissionSet.SetResourceSpecificPermissions(resourceSpecificPermissions)
teamsAppInstallation.SetConsentedPermissionSet(consentedPermissionSet)
additionalData := map[string]interface{}{
	"teamsApp@odata.bind" : "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/8e55a7b1-6766-4f0a-8610-ecacfe3d569a", 
}
teamsAppInstallation.SetAdditionalData(additionalData)

installedApps := []graphmodels.TeamsAppInstallationable {
	teamsAppInstallation,
}
requestBody.SetInstalledApps(installedApps)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
chats, err := graphClient.Chats().Post(context.Background(), requestBody, nil)


```