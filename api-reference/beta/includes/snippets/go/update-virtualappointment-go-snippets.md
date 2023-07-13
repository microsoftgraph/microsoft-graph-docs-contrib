---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("If-Match", "W/\"ZfYdV7Meckeip07P//nwjAAADyI7NQ==\"")

configuration := &graphusers.ItemOnlineMeetingItemVirtualAppointmentRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewVirtualAppointment()
id := "0c7fda79-ff00-f57f-37e3-28183b6d09b5"
requestBody.SetId(&id) 
settings := graphmodels.NewVirtualAppointmentSettings()
allowClientToJoinUsingBrowser := true
settings.SetAllowClientToJoinUsingBrowser(&allowClientToJoinUsingBrowser) 
requestBody.SetSettings(settings)


virtualAppointmentUser := graphmodels.NewVirtualAppointmentUser()
emailAddress := "gradya@contoso.com"
virtualAppointmentUser.SetEmailAddress(&emailAddress) 
displayName := "Grady Archie"
virtualAppointmentUser.SetDisplayName(&displayName) 
smsCapablePhoneNumber := "123-456-7890"
virtualAppointmentUser.SetSmsCapablePhoneNumber(&smsCapablePhoneNumber) 

appointmentClients := []graphmodels.VirtualAppointmentUserable {
	virtualAppointmentUser,
}
requestBody.SetAppointmentClients(appointmentClients)
externalAppointmentId := "AAMkADKnAAA="
requestBody.SetExternalAppointmentId(&externalAppointmentId) 
externalAppointmentUrl := "https://anyschedulingsystem.com/api/appointments/MkADKnAAA="
requestBody.SetExternalAppointmentUrl(&externalAppointmentUrl) 
appointmentClientJoinWebUrl := "https://visit.teams.microsoft.com/webrtc-svc/api/route?tid=a796be92-&convId=19:meeting_=True"
requestBody.SetAppointmentClientJoinWebUrl(&appointmentClientJoinWebUrl) 

result, err := graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").VirtualAppointment().Patch(context.Background(), requestBody, configuration)


```