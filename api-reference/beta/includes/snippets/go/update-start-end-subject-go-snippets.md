---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewOnlineMeeting()
startDateTime , err := time.Parse(time.RFC3339, "2020-09-09T14:33:30.8546353-07:00")
requestBody.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2020-09-09T15:03:30.8566356-07:00")
requestBody.SetEndDateTime(&endDateTime) 
subject := "Patch Meeting Subject"
requestBody.SetSubject(&subject) 

onlineMeetings, err := graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Patch(context.Background(), requestBody, nil)


```