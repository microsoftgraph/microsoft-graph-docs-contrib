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


requestBody := graphmodels.NewEducationClass()
displayName := "String"
requestBody.SetDisplayName(&displayName) 
mailNickname := "String"
requestBody.SetMailNickname(&mailNickname) 
description := "String"
requestBody.SetDescription(&description) 
createdBy := graphmodels.NewIdentitySet()
requestBody.SetCreatedBy(createdBy)
classCode := "String"
requestBody.SetClassCode(&classCode) 
externalName := "String"
requestBody.SetExternalName(&externalName) 
externalId := "String"
requestBody.SetExternalId(&externalId) 
externalSource := graphmodels.STRING_EDUCATIONEXTERNALSOURCE 
requestBody.SetExternalSource(&externalSource) 
externalSourceDetail := "String"
requestBody.SetExternalSourceDetail(&externalSourceDetail) 
grade := "String"
requestBody.SetGrade(&grade) 
term := graphmodels.NewEducationTerm()
requestBody.SetTerm(term)

result, err := graphClient.Education().Classes().Post(context.Background(), requestBody, nil)


```