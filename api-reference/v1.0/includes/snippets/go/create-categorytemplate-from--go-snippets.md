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


requestBody := graphmodelssecurity.NewCategoryTemplate()
displayName := "Accounts Payable"
requestBody.SetDisplayName(&displayName) 

categories, err := graphClient.Security().Labels().Categories().Post(context.Background(), requestBody, nil)


```