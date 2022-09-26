---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewMeetingRegistrationQuestion()
answerInputType := graphmodels.RADIOBUTTON_ANSWERINPUTTYPE 
requestBody.SetAnswerInputType(&answerInputType) 
answerOptions := []string {
	"Software Engineer",
	"Software Development Manager",
	"Product Manager",
	"Data scientist",
	"Other",

}
requestBody.SetAnswerOptions(answerOptions)

graphClient.Me().OnlineMeetingsById("onlineMeeting-id").Registration().CustomQuestionsById("meetingRegistrationQuestion-id").Patch(context.Background(), requestBody, nil)


```