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


requestBody := graphmodels.NewEducationalActivity()
completionMonthYear := date
requestBody.SetCompletionMonthYear(&completionMonthYear) 
endMonthYear := date
requestBody.SetEndMonthYear(&endMonthYear) 
institution := graphmodels.NewInstitutionData()
description := null
institution.SetDescription(&description) 
displayName := "Colorado State University"
institution.SetDisplayName(&displayName) 
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
webUrl := "https://www.colostate.edu"
institution.SetWebUrl(&webUrl) 
requestBody.SetInstitution(institution)
program := graphmodels.NewEducationalActivityDetail()
abbreviation := "MBA"
program.SetAbbreviation(&abbreviation) 
activities := null
program.SetActivities(&activities) 
awards := null
program.SetAwards(&awards) 
description := "Master of Business Administration with a major in Entreprenuership and Finance."
program.SetDescription(&description) 
displayName := "Master of Business Administration"
program.SetDisplayName(&displayName) 
fieldsOfStudy := null
program.SetFieldsOfStudy(&fieldsOfStudy) 
grade := "3.9"
program.SetGrade(&grade) 
notes := null
program.SetNotes(&notes) 
webUrl := "https://biz.colostate.edu"
program.SetWebUrl(&webUrl) 
requestBody.SetProgram(program)
startMonthYear := date
requestBody.SetStartMonthYear(&startMonthYear) 

result, err := graphClient.Me().Profile().EducationalActivities().Post(context.Background(), requestBody, nil)


```