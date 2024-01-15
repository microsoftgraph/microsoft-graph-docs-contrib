---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewChannel()
displayName := "My First Shared Channel"
requestBody.SetDisplayName(&displayName) 
description := "This is my first shared channel"
requestBody.SetDescription(&description) 
membershipType := graphmodels.SHARED_CHANNELMEMBERSHIPTYPE 
requestBody.SetMembershipType(&membershipType) 


conversationMember := graphmodels.NewAadUserConversationMember()
roles := []string {
	"owner",
}
conversationMember.SetRoles(roles)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/users('7640023f-fe43-gv3f-9gg4-84a9efe4acd6')", 
}
conversationMember.SetAdditionalData(additionalData)

members := []graphmodels.ConversationMemberable {
	conversationMember,
}
requestBody.SetMembers(members)

channels, err := graphClient.Teams().ByTeamId("team-id").Channels().Post(context.Background(), requestBody, nil)


```