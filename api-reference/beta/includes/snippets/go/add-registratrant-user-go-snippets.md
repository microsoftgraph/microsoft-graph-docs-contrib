---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewMeetingRegistrant()
firstName := "Frederick"
requestBody.SetFirstName(&firstName)
lastName := "Cormier"
requestBody.SetLastName(&lastName)
email := "frederick.cormier@contoso.com"
requestBody.SetEmail(&email)
requestBody.SetCustomQuestionAnswers( []CustomQuestionAnswer {
	msgraphsdk.NewCustomQuestionAnswer(),
	SetAdditionalData(map[string]interface{}{
		"questionId": "MSM5YjlmM2Q4ZS03ZmVkLTRmN3gwMDIw94MDAyMF9hX3gwMDIwX2RldmU=",
		"value": "No",
	}
	msgraphsdk.NewCustomQuestionAnswer(),
	SetAdditionalData(map[string]interface{}{
		"questionId": "MSM5M2E2OWQ1Ni1jZTc4LTQDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8=",
		"value": "Internet",
	}
}
options := &msgraphsdk.RegistrantsRequestBuilderPostOptions{
	Body: requestBody,
}
userId := "user-id"
onlineMeetingId := "onlineMeeting-id"
result, err := graphClient.UsersById(&userId).OnlineMeetingsById(&onlineMeetingId).Registration().Registrants().Post(options)


```