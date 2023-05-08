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

result, err := graphClient.Places().ByPlaceId("place-id").Patch(context.Background(), requestBody, nil)


```