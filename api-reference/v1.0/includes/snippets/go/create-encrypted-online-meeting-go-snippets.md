---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewOnlineMeeting()
startDateTime , err := time.Parse(time.RFC3339, "2025-02-01T14:30:34.2444915-07:00")
requestBody.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2025-02-01T15:00:34.2464912-07:00")
requestBody.SetEndDateTime(&endDateTime) 
subject := "Encrypted Meeting"
requestBody.SetSubject(&subject) 
isEndToEndEncryptionEnabled := true
requestBody.SetIsEndToEndEncryptionEnabled(&isEndToEndEncryptionEnabled) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
onlineMeetings, err := graphClient.Me().OnlineMeetings().Post(context.Background(), requestBody, nil)


```