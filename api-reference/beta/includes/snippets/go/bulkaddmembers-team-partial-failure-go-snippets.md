---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-beta-sdk-go/teams"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphteams.NewAddPostRequestBody()


conversationMember := graphmodels.NewAadUserConversationMember()
roles := []string {

}
conversationMember.SetRoles(roles)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/users('18a80140-b0fb-4489-b360-2f6efaf225a0')", 
}
conversationMember.SetAdditionalData(additionalData)
conversationMember1 := graphmodels.NewAadUserConversationMember()
roles := []string {
	"owner",
}
conversationMember1.SetRoles(roles)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/users('86503198-b81b-43fe-81ee-ad45b8848ac9')", 
}
conversationMember1.SetAdditionalData(additionalData)

values := []graphmodels.conversationMemberable {
	conversationMember,
	conversationMember1,
}
requestBody.SetValues(values)

result, err := graphClient.Teams().ByTeamId("team-id").Members().Add().Post(context.Background(), requestBody, nil)


```