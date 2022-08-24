---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCustomQuestion()
additionalData := map[string]interface{}{
	"displayName" : "What is your age?", 
	"answerInputType" : "text", 
	answerOptions := []graphmodels.able {

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.BookingBusinessesById("bookingBusiness-id").CustomQuestionsById("bookingCustomQuestion-id").Post(requestBody)


```