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


requestBody := graphmodelssecurity.NewSubcategoryTemplate()
displayName := "Vendor Invoice"
requestBody.SetDisplayName(&displayName) 

subcategories, err := graphClient.Security().Labels().Categories().ByCategoryTemplateId("categoryTemplate-id").Subcategories().Post(context.Background(), requestBody, nil)


```