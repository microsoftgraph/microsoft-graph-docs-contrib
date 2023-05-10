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


requestBody := graphmodels.NewTeamsTab()
displayName := "My Contoso Tab - updated again"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Chats().ByChatId("chat-id").Tabs().ByTabId("teamsTab-id").Patch(context.Background(), requestBody, nil)


```