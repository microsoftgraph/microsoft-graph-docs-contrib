---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewFilePlanReferenceTemplate()
displayName := "FIN 01-02-001"
requestBody.SetDisplayName(&displayName) 

filePlanReferences, err := graphClient.Security().Labels().FilePlanReferences().Post(context.Background(), requestBody, nil)


```