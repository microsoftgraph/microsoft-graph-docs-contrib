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
displayName := "My Sample Team"
requestBody.SetDisplayName(&displayName) 
description := "My Sample Team’s Description"
requestBody.SetDescription(&description) 


conversationMember := graphmodels.NewConversationMember()
roles := []string {
	"owner",

}
conversationMember.SetRoles(roles)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/users('jacob@contoso.com')", 
}
conversationMember.SetAdditionalData(additionalData)

members := []graphmodels.ConversationMemberable {
	conversationMember,

}
requestBody.SetMembers(members)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/teamsTemplates('standard')", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Teams().Post(context.Background(), requestBody, nil)


```