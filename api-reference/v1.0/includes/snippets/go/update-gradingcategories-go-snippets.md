---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignmentSettings, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").AssignmentSettings().Patch(context.Background(), requestBody, nil)


```