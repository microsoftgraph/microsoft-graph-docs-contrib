---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEducationalActivity()
institution := graphmodels.NewInstitutionData()
location := graphmodels.NewPhysicalAddress()
type := graphmodels.BUSINESS_PHYSICALADDRESSTYPE 
location.SetType(&type) 
postOfficeBox := null
location.SetPostOfficeBox(&postOfficeBox) 
street := "12000 E Prospect Rd"
location.SetStreet(&street) 
city := "Fort Collins"
location.SetCity(&city) 
state := "Colorado"
location.SetState(&state) 
countryOrRegion := "USA"
location.SetCountryOrRegion(&countryOrRegion) 
postalCode := "80525"
location.SetPostalCode(&postalCode) 
institution.SetLocation(location)
requestBody.SetInstitution(institution)

graphClient.Me().Profile().EducationalActivitiesById("educationalActivity-id").Patch(context.Background(), requestBody, nil)


```