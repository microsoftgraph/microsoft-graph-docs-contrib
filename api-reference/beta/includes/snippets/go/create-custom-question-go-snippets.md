---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewMeetingRegistrationQuestion()
displayName := "What's your job position?"
requestBody.SetDisplayName(&displayName)
isRequired := false
requestBody.SetIsRequired(&isRequired)
answerInputType := "text"
requestBody.SetAnswerInputType(&answerInputType)
options := &msgraphsdk.CustomQuestionsRequestBuilderPostOptions{
	Body: requestBody,
}
onlineMeetingId := "onlineMeeting-id"
result, err := graphClient.Me().OnlineMeetingsById(&onlineMeetingId).Registration().CustomQuestions().Post(options)


```