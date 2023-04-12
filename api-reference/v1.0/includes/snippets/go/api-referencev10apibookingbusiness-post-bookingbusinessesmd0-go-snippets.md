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


requestBody := graphmodels.NewBookingBusiness()
displayName := "Fourth Coffee"
requestBody.SetDisplayName(&displayName) 
address := graphmodels.NewPhysicalAddress()
street := "4567 Main Street"
address.SetStreet(&street) 
city := "Buffalo"
address.SetCity(&city) 
state := "NY"
address.SetState(&state) 
countryOrRegion := "USA"
address.SetCountryOrRegion(&countryOrRegion) 
postalCode := "98052"
address.SetPostalCode(&postalCode) 
additionalData := map[string]interface{}{
	"postOfficeBox" : "P.O. Box 123", 
}
address.SetAdditionalData(additionalData)
requestBody.SetAddress(address)
phone := "206-555-0100"
requestBody.SetPhone(&phone) 
email := "manager@fourthcoffee.com"
requestBody.SetEmail(&email) 
webSiteUrl := "https://www.fourthcoffee.com"
requestBody.SetWebSiteUrl(&webSiteUrl) 
defaultCurrencyIso := "USD"
requestBody.SetDefaultCurrencyIso(&defaultCurrencyIso) 

result, err := graphClient.Solutions().BookingBusinesses().Post(context.Background(), requestBody, nil)


```