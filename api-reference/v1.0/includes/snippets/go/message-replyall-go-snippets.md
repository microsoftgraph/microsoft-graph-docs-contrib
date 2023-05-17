---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Me/Messages/Item/ReplyAll"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewReplyAllPostRequestBody()
comment := "comment-value"
requestBody.SetComment(&comment) 

graphClient.Me().Messages().ByMessageId("message-id").ReplyAll().Post(context.Background(), requestBody, nil)


```