---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



customQuestions, err := graphClient.BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").CustomQuestions().ByBookingCustomQuestionId("bookingCustomQuestion-id").Get(context.Background(), nil)


```