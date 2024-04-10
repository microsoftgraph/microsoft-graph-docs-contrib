---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.Security().Labels().Categories().ByCategoryTemplateId("categoryTemplate-id").Subcategories().BySubcategoryTemplateId("subcategoryTemplate-id").Delete(context.Background(), nil)


```