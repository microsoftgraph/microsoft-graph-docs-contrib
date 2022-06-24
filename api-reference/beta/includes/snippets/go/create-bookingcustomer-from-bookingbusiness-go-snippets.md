---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewBookingCustomer()
displayName := "Joni Sherman"
requestBody.SetDisplayName(&displayName)
emailAddress := "jonis@relecloud.com"
requestBody.SetEmailAddress(&emailAddress)
requestBody.SetAddresses( []PhysicalAddress {
	msgraphsdk.NewPhysicalAddress(),
postOfficeBox := ""
	SetPostOfficeBox(&postOfficeBox)
street := "4567 Main Street"
	SetStreet(&street)
city := "Buffalo"
	SetCity(&city)
state := "NY"
	SetState(&state)
countryOrRegion := "USA"
	SetCountryOrRegion(&countryOrRegion)
postalCode := "98052"
	SetPostalCode(&postalCode)
type := "home"
	SetType(&type)
	msgraphsdk.NewPhysicalAddress(),
postOfficeBox := ""
	SetPostOfficeBox(&postOfficeBox)
street := "4570 Main Street"
	SetStreet(&street)
city := "Buffalo"
	SetCity(&city)
state := "NY"
	SetState(&state)
countryOrRegion := "USA"
	SetCountryOrRegion(&countryOrRegion)
postalCode := "98054"
	SetPostalCode(&postalCode)
type := "business"
	SetType(&type)
}
requestBody.SetPhones( []Phone {
	msgraphsdk.NewPhone(),
number := "206-555-0100"
	SetNumber(&number)
type := "home"
	SetType(&type)
	msgraphsdk.NewPhone(),
number := "206-555-0200"
	SetNumber(&number)
type := "business"
	SetType(&type)
}
bookingBusinessId := "bookingBusiness-id"
result, err := graphClient.BookingBusinessesById(&bookingBusinessId).Customers().Post(requestBody)


```