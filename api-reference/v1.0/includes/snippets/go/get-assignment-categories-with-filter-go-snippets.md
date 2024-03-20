---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  grapheducation "github.com/microsoftgraph/msgraph-beta-sdk-go/education"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "id eq '74b03ab5-5832-4f99-89f5-d52da13d93f7'"

requestParameters := &grapheducation.EducationClasseItemAssignmentItemCategoriesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &grapheducation.EducationClasseItemAssignmentItemCategoriesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

categories, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Categories().Get(context.Background(), configuration)


```