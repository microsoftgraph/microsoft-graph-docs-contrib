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


requestBody := graphmodels.NewConversationMember()
roles := []string {
	"guest",
}
requestBody.SetRoles(roles)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/users/8ba98gf6-7fc2-4eb2-c7f2-aef9f21fd98g", 
}
requestBody.SetAdditionalData(additionalData)

members, err := graphClient.Chats().ByChatId("chat-id").Members().Post(context.Background(), requestBody, nil)


```