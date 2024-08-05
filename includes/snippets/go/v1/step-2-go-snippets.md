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
chatType := graphmodels.GROUP_CHATTYPE 
requestBody.SetChatType(&chatType) 


conversationMember := graphmodels.NewAadUserConversationMember()
roles := []string {
	"owner",
}
conversationMember.SetRoles(roles)
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/v1.0/users('adams@contoso.com')", 
}
conversationMember.SetAdditionalData(additionalData)
conversationMember1 := graphmodels.NewAadUserConversationMember()
roles := []string {
	"owner",
}
conversationMember1.SetRoles(roles)
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/v1.0/users('gradyA@contoso.com')", 
}
conversationMember1.SetAdditionalData(additionalData)
conversationMember2 := graphmodels.NewAadUserConversationMember()
roles := []string {
	"owner",
}
conversationMember2.SetRoles(roles)
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/v1.0/users('4562bcc8-c436-4f95-b7c0-4f8ce89dca5e')", 
}
conversationMember2.SetAdditionalData(additionalData)

members := []graphmodels.ConversationMemberable {
	conversationMember,
	conversationMember1,
	conversationMember2,
}
requestBody.SetMembers(members)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
chats, err := graphClient.Chats().Post(context.Background(), requestBody, nil)


```