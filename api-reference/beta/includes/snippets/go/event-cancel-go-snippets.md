---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Me/Events/Item/Cancel"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCancelPostRequestBody()
comment := "Cancelling for this week due to all hands"
requestBody.SetComment(&comment) 

graphClient.Me().Events().ByEventId("event-id").Cancel().Post(context.Background(), requestBody, nil)


```