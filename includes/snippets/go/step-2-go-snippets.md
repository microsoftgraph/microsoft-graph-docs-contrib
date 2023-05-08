---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewChat()
chatType := graphmodels.GROUP_CHATTYPE 
requestBody.SetChatType(&chatType) 


conversationMember := graphmodels.NewConversationMember()
roles := []string {
	"owner",

}
conversationMember.SetRoles(roles)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/users('adams@contoso.com')", 
}
conversationMember.SetAdditionalData(additionalData)
conversationMember1 := graphmodels.NewConversationMember()
roles := []string {
	"owner",

}
conversationMember1.SetRoles(roles)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/users('gradyA@contoso.com')", 
}
conversationMember1.SetAdditionalData(additionalData)
conversationMember2 := graphmodels.NewConversationMember()
roles := []string {
	"owner",

}
conversationMember2.SetRoles(roles)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/users('4562bcc8-c436-4f95-b7c0-4f8ce89dca5e')", 
}
conversationMember2.SetAdditionalData(additionalData)

members := []graphmodels.ConversationMemberable {
	conversationMember,
	conversationMember1,
	conversationMember2,

}
requestBody.SetMembers(members)

result, err := graphClient.Chats().Post(context.Background(), requestBody, nil)


```