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
	"displayName" : "Joni Sherman", 
	"emailAddress" : "jonis@relecloud.com", 


 := graphmodels.New()
postOfficeBox := ""
.SetPostOfficeBox(&postOfficeBox) 
street := "4567 Main Street"
.SetStreet(&street) 
city := "Buffalo"
.SetCity(&city) 
state := "NY"
.SetState(&state) 
countryOrRegion := "USA"
.SetCountryOrRegion(&countryOrRegion) 
postalCode := "98052"
.SetPostalCode(&postalCode) 
type := "home"
.SetType(&type) 
 := graphmodels.New()
postOfficeBox := ""
.SetPostOfficeBox(&postOfficeBox) 
street := "4570 Main Street"
.SetStreet(&street) 
city := "Buffalo"
.SetCity(&city) 
state := "NY"
.SetState(&state) 
countryOrRegion := "USA"
.SetCountryOrRegion(&countryOrRegion) 
postalCode := "98054"
.SetPostalCode(&postalCode) 
type := "business"
.SetType(&type) 

	addresses := []graphmodels.Objectable {
		,
		,

	}


 := graphmodels.New()
number := "206-555-0100"
.SetNumber(&number) 
type := "home"
.SetType(&type) 
 := graphmodels.New()
number := "206-555-0200"
.SetNumber(&number) 
type := "business"
.SetType(&type) 

	phones := []graphmodels.Objectable {
		,
		,

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").Customers().Post(context.Background(), requestBody, nil)


```