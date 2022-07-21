---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEducationSchool()
"@odata.type" := "#microsoft.graph.educationSchool"
requestBody.Set"@odata.type"(&"@odata.type") 
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
"@odata.type" := "microsoft.graph.identitySet"
createdBy.Set"@odata.type"(&"@odata.type") 
requestBody.SetCreatedBy(createdBy)
address := graphmodels.NewPhysicalAddress()
"@odata.type" := "microsoft.graph.physicalAddress"
address.Set"@odata.type"(&"@odata.type") 
requestBody.SetAddress(address)

result, err := graphClient.Education().Schools().Post(requestBody)


```