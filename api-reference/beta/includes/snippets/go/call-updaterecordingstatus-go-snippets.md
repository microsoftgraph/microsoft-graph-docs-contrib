---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-beta-sdk-go/communications"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphcommunications.NewUpdateRecordingStatusPostRequestBody()
clientContext := "clientContext-value"
requestBody.SetClientContext(&clientContext) 
status := graphmodels.NOTRECORDING | RECORDING | FAILED_RECORDINGSTATUS 
requestBody.SetStatus(&status) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
updateRecordingStatus, err := graphClient.Communications().Calls().ByCallId("call-id").UpdateRecordingStatus().Post(context.Background(), requestBody, nil)


```