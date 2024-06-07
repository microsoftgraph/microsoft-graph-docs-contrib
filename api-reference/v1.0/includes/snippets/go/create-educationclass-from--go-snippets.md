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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
classes, err := graphClient.Education().Classes().Post(context.Background(), requestBody, nil)


```