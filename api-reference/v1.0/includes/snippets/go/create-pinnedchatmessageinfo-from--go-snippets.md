---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPinnedChatMessageInfo()
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1616964509832", 
}
requestBody.SetAdditionalData(additionalData)

pinnedMessages, err := graphClient.Chats().ByChatId("chat-id").PinnedMessages().Post(context.Background(), requestBody, nil)


```