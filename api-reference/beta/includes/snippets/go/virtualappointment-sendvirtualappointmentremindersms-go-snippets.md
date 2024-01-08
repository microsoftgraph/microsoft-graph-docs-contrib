---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemSendVirtualAppointmentReminderSmsPostRequestBody()
remindBeforeTimeInMinutesType := graphmodels.MINS15_REMINDBEFORETIMEINMINUTESTYPE 
requestBody.SetRemindBeforeTimeInMinutesType(&remindBeforeTimeInMinutesType) 
additionalData := map[string]interface{}{
	phoneNumbers := []string {
		"+13129224122",
		"+1242421412",
	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").SendVirtualAppointmentReminderSms().Post(context.Background(), requestBody, nil)


```