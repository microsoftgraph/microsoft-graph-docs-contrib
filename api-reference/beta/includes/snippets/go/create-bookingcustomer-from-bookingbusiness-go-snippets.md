---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBookingCustomer()
displayName := "Joni Sherman"
requestBody.SetDisplayName(&displayName) 
emailAddress := "jonis@relecloud.com"
requestBody.SetEmailAddress(&emailAddress) 


physicalAddress := graphmodels.NewPhysicalAddress()
postOfficeBox := ""
physicalAddress.SetPostOfficeBox(&postOfficeBox) 
street := "4567 Main Street"
physicalAddress.SetStreet(&street) 
city := "Buffalo"
physicalAddress.SetCity(&city) 
state := "NY"
physicalAddress.SetState(&state) 
countryOrRegion := "USA"
physicalAddress.SetCountryOrRegion(&countryOrRegion) 
postalCode := "98052"
physicalAddress.SetPostalCode(&postalCode) 
type := graphmodels.HOME_PHYSICALADDRESSTYPE 
physicalAddress.SetType(&type) 
physicalAddress1 := graphmodels.NewPhysicalAddress()
postOfficeBox := ""
physicalAddress1.SetPostOfficeBox(&postOfficeBox) 
street := "4570 Main Street"
physicalAddress1.SetStreet(&street) 
city := "Buffalo"
physicalAddress1.SetCity(&city) 
state := "NY"
physicalAddress1.SetState(&state) 
countryOrRegion := "USA"
physicalAddress1.SetCountryOrRegion(&countryOrRegion) 
postalCode := "98054"
physicalAddress1.SetPostalCode(&postalCode) 
type := graphmodels.BUSINESS_PHYSICALADDRESSTYPE 
physicalAddress1.SetType(&type) 

addresses := []graphmodels.PhysicalAddressable {
	physicalAddress,
	physicalAddress1,

}
requestBody.SetAddresses(addresses)


phone := graphmodels.NewPhone()
number := "206-555-0100"
phone.SetNumber(&number) 
type := graphmodels.HOME_PHONETYPE 
phone.SetType(&type) 
phone1 := graphmodels.NewPhone()
number := "206-555-0200"
phone1.SetNumber(&number) 
type := graphmodels.BUSINESS_PHONETYPE 
phone1.SetType(&type) 

phones := []graphmodels.Phoneable {
	phone,
	phone1,

}
requestBody.SetPhones(phones)

result, err := graphClient.BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").Customers().Post(context.Background(), requestBody, nil)


```