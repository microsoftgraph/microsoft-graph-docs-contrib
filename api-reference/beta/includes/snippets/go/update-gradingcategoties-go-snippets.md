---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEducationGradingCategory()
displayName := "Quiz-1"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Education().Classes().ByClasseId("educationClass-id").AssignmentSettings().GradingCategories().ByGradingCategorieId("educationGradingCategory-id").Patch(context.Background(), requestBody, nil)


```