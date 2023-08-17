---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewCitationTemplate()
displayName := "String"
requestBody.SetDisplayName(&displayName) 
createdBy := graphmodels.NewIdentitySet()
requestBody.SetCreatedBy(createdBy)
citationUrl := "String"
requestBody.SetCitationUrl(&citationUrl) 
citationJurisdiction := "String"
requestBody.SetCitationJurisdiction(&citationJurisdiction) 

result, err := graphClient.Security().Labels().Citations().Post(context.Background(), requestBody, nil)


```