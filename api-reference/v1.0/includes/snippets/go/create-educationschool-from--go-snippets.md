---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
schools, err := graphClient.Education().Schools().Post(context.Background(), requestBody, nil)


```