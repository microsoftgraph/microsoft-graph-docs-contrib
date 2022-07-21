---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBookingCustomQuestion()
"@odata.type" := "#microsoft.graph.bookingCustomQuestion"
requestBody.Set"@odata.type"(&"@odata.type") 
displayName := "What is your age?"
requestBody.SetDisplayName(&displayName) 
answerInputType := graphmodels.TEXT_ANSWERINPUTTYPE 
requestBody.SetAnswerInputType(&answerInputType) 
answerOptions := []string {

}
requestBody.SetAnswerOptions(answerOptions)

result, err := graphClient.Solutions().BookingBusinessesById("bookingBusiness-id").CustomQuestions().Post(requestBody)


```