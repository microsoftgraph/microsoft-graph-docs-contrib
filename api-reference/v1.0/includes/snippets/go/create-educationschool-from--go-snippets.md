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


requestBody := graphmodels.NewEducationSchool()
displayName := "String"
requestBody.SetDisplayName(&displayName) 
description := "String"
requestBody.SetDescription(&description) 
externalSource := graphmodels.STRING_EDUCATIONEXTERNALSOURCE 
requestBody.SetExternalSource(&externalSource) 
externalSourceDetail := "String"
requestBody.SetExternalSourceDetail(&externalSourceDetail) 
principalEmail := "String"
requestBody.SetPrincipalEmail(&principalEmail) 
principalName := "String"
requestBody.SetPrincipalName(&principalName) 
externalPrincipalId := "String"
requestBody.SetExternalPrincipalId(&externalPrincipalId) 
lowestGrade := "String"
requestBody.SetLowestGrade(&lowestGrade) 
highestGrade := "String"
requestBody.SetHighestGrade(&highestGrade) 
schoolNumber := "String"
requestBody.SetSchoolNumber(&schoolNumber) 
externalId := "String"
requestBody.SetExternalId(&externalId) 
phone := "String"
requestBody.SetPhone(&phone) 
fax := "String"
requestBody.SetFax(&fax) 
createdBy := graphmodels.NewIdentitySet()
requestBody.SetCreatedBy(createdBy)
address := graphmodels.NewPhysicalAddress()
requestBody.SetAddress(address)

result, err := graphClient.Education().Schools().Post(context.Background(), requestBody, nil)


```