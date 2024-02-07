---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEducationGradingCategory()
displayName := "Test updated"
requestBody.SetDisplayName(&displayName) 

gradingCategories, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").AssignmentSettings().GradingCategories().ByEducationGradingCategoryId("educationGradingCategory-id").Patch(context.Background(), requestBody, nil)


```