---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Me/Events/Item/Accept"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAcceptPostRequestBody()
comment := "comment-value"
requestBody.SetComment(&comment) 
sendResponse := true
requestBody.SetSendResponse(&sendResponse) 

graphClient.Me().Events().ByEventId("event-id").Accept().Post(context.Background(), requestBody, nil)


```