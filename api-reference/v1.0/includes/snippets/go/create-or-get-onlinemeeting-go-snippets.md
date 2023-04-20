---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Me/OnlineMeetings/CreateOrGet"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCreateOrGetPostRequestBody()
startDateTime , err := time.Parse(time.RFC3339, "2020-02-06T01:49:21.3524945+00:00")
requestBody.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2020-02-06T02:19:21.3524945+00:00")
requestBody.SetEndDateTime(&endDateTime) 
subject := "Create a meeting with customId provided"
requestBody.SetSubject(&subject) 
externalId := "7eb8263f-d0e0-4149-bb1c-1f0476083c56"
requestBody.SetExternalId(&externalId) 
participants := graphmodels.NewMeetingParticipants()


meetingParticipantInfo := graphmodels.NewMeetingParticipantInfo()
identity := graphmodels.NewIdentitySet()
user := graphmodels.NewIdentity()
id := "1f35f2e6-9cab-44ad-8d5a-b74c14720000"
user.SetId(&id) 
identity.SetUser(user)
meetingParticipantInfo.SetIdentity(identity)
upn := "test1@contoso.com"
meetingParticipantInfo.SetUpn(&upn) 

attendees := []graphmodels.MeetingParticipantInfoable {
	meetingParticipantInfo,

}
participants.SetAttendees(attendees)
requestBody.SetParticipants(participants)

result, err := graphClient.Me().OnlineMeetings().CreateOrGet().Post(context.Background(), requestBody, nil)


```