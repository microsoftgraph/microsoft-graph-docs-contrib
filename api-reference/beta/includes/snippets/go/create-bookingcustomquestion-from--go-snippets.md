---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/BookingBusinesses/Item/CustomQuestions/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCustomQuestion()
additionalData := map[string]interface{}{
	"displayName" : "What is your age?", 
	"answerInputType" : "text", 
	answerOptions := []graphmodels.able {

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").CustomQuestions().ByCustomQuestionId("bookingCustomQuestion-id").Post(context.Background(), requestBody, nil)


```