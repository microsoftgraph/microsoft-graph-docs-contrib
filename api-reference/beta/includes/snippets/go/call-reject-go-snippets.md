---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-beta-sdk-go/communications"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphcommunications.NewRejectPostRequestBody()
reason := graphmodels.BUSY_REJECTREASON 
requestBody.SetReason(&reason) 

graphClient.Communications().Calls().ByCallId("call-id").Reject().Post(context.Background(), requestBody, nil)


```