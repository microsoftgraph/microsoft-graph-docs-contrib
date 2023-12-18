---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewConversationMember()
visibleHistoryStartDateTime , err := time.Parse(time.RFC3339, "0001-01-01T00:00:00Z")
requestBody.SetVisibleHistoryStartDateTime(&visibleHistoryStartDateTime) 
roles := []string {
	"owner",
}
requestBody.SetRoles(roles)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5", 
}
requestBody.SetAdditionalData(additionalData)

members, err := graphClient.Chats().ByChatId("chat-id").Members().Post(context.Background(), requestBody, nil)


```