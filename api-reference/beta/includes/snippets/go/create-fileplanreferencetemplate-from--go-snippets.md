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


requestBody := graphmodelssecurity.NewFilePlanReferenceTemplate()
displayName := "String"
requestBody.SetDisplayName(&displayName) 
createdBy := graphmodels.NewIdentitySet()
requestBody.SetCreatedBy(createdBy)

filePlanReferences, err := graphClient.Security().Labels().FilePlanReferences().Post(context.Background(), requestBody, nil)


```