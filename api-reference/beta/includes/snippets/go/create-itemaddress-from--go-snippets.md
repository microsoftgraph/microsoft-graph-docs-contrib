---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewItemAddress()
displayName := "Home"
requestBody.SetDisplayName(&displayName)
detail := msgraphsdk.NewPhysicalAddress()
requestBody.SetDetail(detail)
type := "home"
detail.SetType(&type)
detail.SetPostOfficeBox(nil)
street := "221B Baker Street"
detail.SetStreet(&street)
city := "London"
detail.SetCity(&city)
detail.SetState(nil)
countryOrRegion := "United Kingdom"
detail.SetCountryOrRegion(&countryOrRegion)
postalCode := "E14 3TD"
detail.SetPostalCode(&postalCode)
options := &msgraphsdk.AddressesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Profile().Addresses().Post(options);


```