---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemSendVirtualAppointmentReminderSmsPostRequestBody()


attendeeNotificationInfo := graphmodels.NewAttendeeNotificationInfo()
phoneNumber := "+13129224122"
attendeeNotificationInfo.SetPhoneNumber(&phoneNumber) 
timeZone := "Pacific Standard Time"
attendeeNotificationInfo.SetTimeZone(&timeZone) 
attendeeNotificationInfo1 := graphmodels.NewAttendeeNotificationInfo()
phoneNumber := "+1242421412"
attendeeNotificationInfo1.SetPhoneNumber(&phoneNumber) 
timeZone := "Eastern Standard Time"
attendeeNotificationInfo1.SetTimeZone(&timeZone) 

attendees := []graphmodels.AttendeeNotificationInfoable {
	attendeeNotificationInfo,
	attendeeNotificationInfo1,
}
requestBody.SetAttendees(attendees)
remindBeforeTimeInMinutesType := graphmodels.MINS15_REMINDBEFORETIMEINMINUTESTYPE 
requestBody.SetRemindBeforeTimeInMinutesType(&remindBeforeTimeInMinutesType) 

graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").SendVirtualAppointmentReminderSms().Post(context.Background(), requestBody, nil)


```