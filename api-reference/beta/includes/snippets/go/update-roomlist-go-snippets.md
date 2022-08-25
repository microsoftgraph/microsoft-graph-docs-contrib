---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPlace()
displayName := "Building 1"
requestBody.SetDisplayName(&displayName) 
phone := "555-555-0100"
requestBody.SetPhone(&phone) 
address := graphmodels.NewPhysicalAddress()
street := "4567 Main Street"
address.SetStreet(&street) 
city := "Buffalo"
address.SetCity(&city) 
state := "NY"
address.SetState(&state) 
postalCode := "98052"
address.SetPostalCode(&postalCode) 
countryOrRegion := "USA"
address.SetCountryOrRegion(&countryOrRegion) 
requestBody.SetAddress(address)
geoCoordinates := graphmodels.NewOutlookGeoCoordinates()
altitude := null
geoCoordinates.SetAltitude(&altitude) 
latitude := float64(47)
geoCoordinates.SetLatitude(&latitude) 
longitude := float64(-122)
geoCoordinates.SetLongitude(&longitude) 
accuracy := null
geoCoordinates.SetAccuracy(&accuracy) 
altitudeAccuracy := null
geoCoordinates.SetAltitudeAccuracy(&altitudeAccuracy) 
requestBody.SetGeoCoordinates(geoCoordinates)

graphClient.PlacesById("place-id").Patch(requestBody)


```