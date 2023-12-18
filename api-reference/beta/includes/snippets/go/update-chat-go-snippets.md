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


requestBody := graphmodels.NewChat()
topic := "Group chat title update"
requestBody.SetTopic(&topic) 

chats, err := graphClient.Chats().ByChatId("chat-id").Patch(context.Background(), requestBody, nil)


```