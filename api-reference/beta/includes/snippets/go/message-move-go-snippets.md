---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Me/Messages/Item/Move"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMovePostRequestBody()
destinationId := "deleteditems"
requestBody.SetDestinationId(&destinationId) 

result, err := graphClient.Me().Messages().ByMessageId("message-id").Move().Post(context.Background(), requestBody, nil)


```