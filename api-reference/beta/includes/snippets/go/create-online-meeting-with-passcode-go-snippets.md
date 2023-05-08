---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewOnlineMeeting()
startDateTime , err := time.Parse(time.RFC3339, "2019-07-12T14:30:34.2444915-07:00")
requestBody.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2019-07-12T15:00:34.2464912-07:00")
requestBody.SetEndDateTime(&endDateTime) 
subject := "User meeting"
requestBody.SetSubject(&subject) 
joinMeetingIdSettings := graphmodels.NewJoinMeetingIdSettings()
isPasscodeRequired := true
joinMeetingIdSettings.SetIsPasscodeRequired(&isPasscodeRequired) 
requestBody.SetJoinMeetingIdSettings(joinMeetingIdSettings)

result, err := graphClient.Me().OnlineMeetings().Post(context.Background(), requestBody, nil)


```