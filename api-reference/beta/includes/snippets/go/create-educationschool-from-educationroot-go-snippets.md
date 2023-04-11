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


requestBody := graphmodels.NewEducationSchool()
displayName := "Fabrikam High School"
requestBody.SetDisplayName(&displayName) 
description := "Magnate school for the arts. Los Angeles School District"
requestBody.SetDescription(&description) 
externalSource := graphmodels.STRING_EDUCATIONEXTERNALSOURCE 
requestBody.SetExternalSource(&externalSource) 
principalEmail := "AmyR@fabrikam.com"
requestBody.SetPrincipalEmail(&principalEmail) 
principalName := "Amy Roebuck"
requestBody.SetPrincipalName(&principalName) 
externalPrincipalId := "14007"
requestBody.SetExternalPrincipalId(&externalPrincipalId) 
highestGrade := "12"
requestBody.SetHighestGrade(&highestGrade) 
lowestGrade := "9"
requestBody.SetLowestGrade(&lowestGrade) 
schoolNumber := "10002"
requestBody.SetSchoolNumber(&schoolNumber) 
address := graphmodels.NewPhysicalAddress()
city := "Los Angeles"
address.SetCity(&city) 
countryOrRegion := "United States"
address.SetCountryOrRegion(&countryOrRegion) 
postalCode := "98055"
address.SetPostalCode(&postalCode) 
state := "CA"
address.SetState(&state) 
street := "12345 Main St."
address.SetStreet(&street) 
requestBody.SetAddress(address)
externalId := "10002"
requestBody.SetExternalId(&externalId) 
phone := "+1 (253) 555-0102"
requestBody.SetPhone(&phone) 

result, err := graphClient.Education().Schools().Post(context.Background(), requestBody, nil)


```