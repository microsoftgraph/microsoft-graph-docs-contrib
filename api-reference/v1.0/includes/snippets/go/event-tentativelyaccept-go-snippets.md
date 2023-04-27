---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Me/Events/Item/TentativelyAccept"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTentativelyAcceptPostRequestBody()
comment := "I may not be able to make this week. How about next week?"
requestBody.SetComment(&comment) 
sendResponse := true
requestBody.SetSendResponse(&sendResponse) 
proposedNewTime := graphmodels.NewTimeSlot()
start := graphmodels.NewDateTimeTimeZone()
dateTime := "2019-12-02T18:00:00"
start.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
start.SetTimeZone(&timeZone) 
proposedNewTime.SetStart(start)
end := graphmodels.NewDateTimeTimeZone()
dateTime := "2019-12-02T19:00:00"
end.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
end.SetTimeZone(&timeZone) 
proposedNewTime.SetEnd(end)
requestBody.SetProposedNewTime(proposedNewTime)

graphClient.Me().Events().ByEventId("event-id").TentativelyAccept().Post(context.Background(), requestBody, nil)


```