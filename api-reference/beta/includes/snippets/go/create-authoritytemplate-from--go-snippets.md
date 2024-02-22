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


requestBody := graphmodelssecurity.NewAuthorityTemplate()
displayName := "String"
requestBody.SetDisplayName(&displayName) 
createdBy := graphmodels.NewIdentitySet()
requestBody.SetCreatedBy(createdBy)

authorities, err := graphClient.Security().Labels().Authorities().Post(context.Background(), requestBody, nil)


```