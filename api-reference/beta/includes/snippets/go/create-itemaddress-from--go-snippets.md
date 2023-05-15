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


requestBody := graphmodels.NewItemAddress()
displayName := "Home"
requestBody.SetDisplayName(&displayName) 
detail := graphmodels.NewPhysicalAddress()
type := graphmodels.HOME_PHYSICALADDRESSTYPE 
detail.SetType(&type) 
postOfficeBox := null
detail.SetPostOfficeBox(&postOfficeBox) 
street := "221B Baker Street"
detail.SetStreet(&street) 
city := "London"
detail.SetCity(&city) 
state := null
detail.SetState(&state) 
countryOrRegion := "United Kingdom"
detail.SetCountryOrRegion(&countryOrRegion) 
postalCode := "E14 3TD"
detail.SetPostalCode(&postalCode) 
requestBody.SetDetail(detail)

result, err := graphClient.Me().Profile().Addresses().Post(context.Background(), requestBody, nil)


```