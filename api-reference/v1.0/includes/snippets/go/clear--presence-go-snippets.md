---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Users/Item/Presence/ClearPresence"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewClearPresencePostRequestBody()
sessionId := "22553876-f5ab-4529-bffb-cfe50aa89f87"
requestBody.SetSessionId(&sessionId) 

graphClient.Users().ByUserId("user-id").Presence().ClearPresence().Post(context.Background(), requestBody, nil)


```