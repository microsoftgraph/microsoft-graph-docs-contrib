---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphusers.NewItemSendVirtualAppointmentSmsPostRequestBody()


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
messageType := graphmodels.CONFIRMATION_VIRTUALAPPOINTMENTMESSAGETYPE 
requestBody.SetMessageType(&messageType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").SendVirtualAppointmentSms().Post(context.Background(), requestBody, nil)


```