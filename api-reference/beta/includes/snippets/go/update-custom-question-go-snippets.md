---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewMeetingRegistrationQuestion()
answerInputType := "radioButton"
requestBody.SetAnswerInputType(&answerInputType)
requestBody.SetAnswerOptions( []String {
	"Software Engineer",
	"Software Development Manager",
	"Product Manager",
	"Data scientist",
	"Other",
}
options := &msgraphsdk.MeetingRegistrationQuestionRequestBuilderPatchOptions{
	Body: requestBody,
}
onlineMeetingId := "onlineMeeting-id"
meetingRegistrationQuestionId := "meetingRegistrationQuestion-id"
graphClient.Me().OnlineMeetingsById(&onlineMeetingId).Registration().CustomQuestionsById(&meetingRegistrationQuestionId).Patch(options)


```