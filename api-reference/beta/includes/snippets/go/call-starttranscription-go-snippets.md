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
	  //other-imports
)

requestBody := graphcommunications.NewStartTranscriptionPostRequestBody()
language := "en-us"
requestBody.SetLanguage(&language) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
startTranscription, err := graphClient.Communications().Calls().ByCallId("call-id").StartTranscription().Post(context.Background(), requestBody, nil)


```