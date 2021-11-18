---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewMeetingRegistration()
subject := "Microsoft Ignite: Day 1"
requestBody.SetSubject(&subject)
startDateTime, err := time.Parse(time.RFC3339, "2021-11-02T08:00:00-08:00")
requestBody.SetStartDateTime(&startDateTime)
endDateTime, err := time.Parse(time.RFC3339, "2021-11-02T15:45:00-08:00")
requestBody.SetEndDateTime(&endDateTime)
requestBody.SetSpeakers( []MeetingSpeaker {
	msgraphsdk.NewMeetingSpeaker(),
	SetAdditionalData(map[string]interface{}{
		"displayName": "Henry Ross",
		"bio": "Chairman and Chief Executive Officer",
	}
	msgraphsdk.NewMeetingSpeaker(),
	SetAdditionalData(map[string]interface{}{
		"displayName": "Fred Ryan",
		"bio": "CVP",
	}
}
options := &msgraphsdk.RegistrationRequestBuilderPatchOptions{
	Body: requestBody,
}
onlineMeetingId := "onlineMeeting-id"
graphClient.Me().OnlineMeetingsById(&onlineMeetingId).Registration().Patch(options)


```