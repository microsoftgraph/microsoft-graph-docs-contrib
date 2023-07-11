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


requestBody := graphcommunications.NewUpdateRecordingStatusPostRequestBody()
clientContext := "clientContext-value"
requestBody.SetClientContext(&clientContext) 
status := graphmodels.NOTRECORDING | RECORDING | FAILED_RECORDINGSTATUS 
requestBody.SetStatus(&status) 

result, err := graphClient.Communications().Calls().ByCallId("call-id").UpdateRecordingStatus().Post(context.Background(), requestBody, nil)


```