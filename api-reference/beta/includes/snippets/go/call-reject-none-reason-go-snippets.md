---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Communications/Calls/Item/Reject"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewRejectPostRequestBody()
reason := graphmodels.NONE_REJECTREASON 
requestBody.SetReason(&reason) 

graphClient.Communications().Calls().ByCallId("call-id").Reject().Post(context.Background(), requestBody, nil)


```