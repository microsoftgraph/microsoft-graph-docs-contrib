---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBookingCustomerBase()
additionalData := map[string]interface{}{
	"displayName" : "Adele", 
	"emailAddress" : "adele@relecloud.com", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Solutions().BookingBusinessesById("bookingBusiness-id").CustomersById("bookingCustomerBase-id").Patch(context.Background(), requestBody, nil)


```