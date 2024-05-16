---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewBookingCustomQuestion()
displayName := "What is your age?"
requestBody.SetDisplayName(&displayName) 
answerInputType := graphmodels.TEXT_ANSWERINPUTTYPE 
requestBody.SetAnswerInputType(&answerInputType) 
answerOptions := []string {

}
requestBody.SetAnswerOptions(answerOptions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
customQuestions, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").CustomQuestions().Post(context.Background(), requestBody, nil)


```