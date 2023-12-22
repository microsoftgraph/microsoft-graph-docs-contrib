---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphchats "github.com/microsoftgraph/msgraph-beta-sdk-go/chats"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphchats.NewRemoveAllAccessForUserPostRequestBody()
user := graphmodels.NewTeamworkUserIdentity()
requestBody.SetUser(user)

graphClient.Chats().ByChatId("chat-id").RemoveAllAccessForUser().Post(context.Background(), requestBody, nil)


```