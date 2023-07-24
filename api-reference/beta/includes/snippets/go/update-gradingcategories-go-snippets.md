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


requestBody := graphmodels.NewEducationAssignmentSettings()


educationGradingCategory := graphmodels.NewEducationGradingCategory()
displayName := "Lab"
educationGradingCategory.SetDisplayName(&displayName) 
percentageWeight := int32(10)
educationGradingCategory.SetPercentageWeight(&percentageWeight) 
educationGradingCategory1 := graphmodels.NewEducationGradingCategory()
displayName := "Homework"
educationGradingCategory1.SetDisplayName(&displayName) 
percentageWeight := int32(80)
educationGradingCategory1.SetPercentageWeight(&percentageWeight) 
educationGradingCategory2 := graphmodels.NewEducationGradingCategory()
displayName := "Test"
educationGradingCategory2.SetDisplayName(&displayName) 
percentageWeight := int32(10)
educationGradingCategory2.SetPercentageWeight(&percentageWeight) 

gradingCategories := []graphmodels.EducationGradingCategoryable {
	educationGradingCategory,
	educationGradingCategory1,
	educationGradingCategory2,
}
requestBody.SetGradingCategories(gradingCategories)

result, err := graphClient.Education().Classes().ByClasseId("educationClass-id").AssignmentSettings().Patch(context.Background(), requestBody, nil)


```