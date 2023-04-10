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


requestBody := graphmodels.NewEducationUser()
displayName := "Dion Matheson"
requestBody.SetDisplayName(&displayName) 
givenName := "Dion"
requestBody.SetGivenName(&givenName) 
middleName := null
requestBody.SetMiddleName(&middleName) 
surname := "Matheson"
requestBody.SetSurname(&surname) 
mail := "DionM@contoso.com"
requestBody.SetMail(&mail) 
mobilePhone := "+1 (253) 555-0101"
requestBody.SetMobilePhone(&mobilePhone) 
createdBy := graphmodels.NewIdentitySet()
user := graphmodels.NewIdentity()
displayName := "Susana Rocha"
user.SetDisplayName(&displayName) 
id := "14012"
user.SetId(&id) 
createdBy.SetUser(user)
requestBody.SetCreatedBy(createdBy)
externalSource := graphmodels.SIS_EDUCATIONEXTERNALSOURCE 
requestBody.SetExternalSource(&externalSource) 
mailingAddress := graphmodels.NewPhysicalAddress()
city := "Los Angeles"
mailingAddress.SetCity(&city) 
countryOrRegion := "United States"
mailingAddress.SetCountryOrRegion(&countryOrRegion) 
postalCode := "98055"
mailingAddress.SetPostalCode(&postalCode) 
state := "CA"
mailingAddress.SetState(&state) 
street := "12345 Main St."
mailingAddress.SetStreet(&street) 
requestBody.SetMailingAddress(mailingAddress)
primaryRole := graphmodels.STUDENT_EDUCATIONUSERROLE 
requestBody.SetPrimaryRole(&primaryRole) 
residenceAddress := graphmodels.NewPhysicalAddress()
city := "Los Angeles"
residenceAddress.SetCity(&city) 
countryOrRegion := "United States"
residenceAddress.SetCountryOrRegion(&countryOrRegion) 
postalCode := "98055"
residenceAddress.SetPostalCode(&postalCode) 
state := "CA"
residenceAddress.SetState(&state) 
street := "12345 Main St."
residenceAddress.SetStreet(&street) 
requestBody.SetResidenceAddress(residenceAddress)

result, err := graphClient.Education().Users().Post(context.Background(), requestBody, nil)


```