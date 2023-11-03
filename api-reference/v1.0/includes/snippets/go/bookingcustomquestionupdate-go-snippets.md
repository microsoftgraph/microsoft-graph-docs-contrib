---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBookingCustomQuestion()
displayName := "What is your age?"
requestBody.SetDisplayName(&displayName) 
answerInputType := graphmodels.TEXT_ANSWERINPUTTYPE 
requestBody.SetAnswerInputType(&answerInputType) 
answerOptions := []string {

}
requestBody.SetAnswerOptions(answerOptions)

customQuestions, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").CustomQuestions().ByBookingCustomQuestionId("bookingCustomQuestion-id").Patch(context.Background(), requestBody, nil)


```