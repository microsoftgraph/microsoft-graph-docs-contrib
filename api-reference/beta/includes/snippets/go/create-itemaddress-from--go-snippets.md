---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
addresses, err := graphClient.Me().Profile().Addresses().Post(context.Background(), requestBody, nil)


```