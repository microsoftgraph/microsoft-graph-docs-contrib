---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewConversationThread()
additionalData := map[string]interface{}{
	"originalStartTimeZone" : "originalStartTimeZone-value", 
	"originalEndTimeZone" : "originalEndTimeZone-value", 
responseStatus := graph.New()
response := ""
responseStatus.SetResponse(&response) 
time := "datetime-value"
responseStatus.SetTime(&time) 
	requestBody.SetResponseStatus(responseStatus)
	"iCalUId" : "iCalUId-value", 
	"reminderMinutesBeforeStart" : int32(99) , 
	isReminderOn := true
requestBody.SetIsReminderOn(&isReminderOn) 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
threads, err := graphClient.Groups().ByGroupId("group-id").Threads().ByConversationThreadId("conversationThread-id").Patch(context.Background(), requestBody, nil)


```