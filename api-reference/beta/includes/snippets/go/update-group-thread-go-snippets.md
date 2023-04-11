---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewConversationThread()
additionalData := map[string]interface{}{
	"originalStartTimeZone" : "originalStartTimeZone-value", 
	"originalEndTimeZone" : "originalEndTimeZone-value", 
responseStatus := graphmodels.New()
response := ""
responseStatus.SetResponse(&response) 
time := "datetime-value"
responseStatus.SetTime(&time) 
	requestBody.SetResponseStatus(responseStatus)
	"uid" : "iCalUId-value", 
	"reminderMinutesBeforeStart" : int32(99) , 
	isReminderOn := true
requestBody.SetIsReminderOn(&isReminderOn) 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.GroupsById("group-id").ThreadsById("conversationThread-id").Patch(context.Background(), requestBody, nil)


```