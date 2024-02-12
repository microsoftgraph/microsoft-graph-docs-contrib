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



requestFilter := "id eq 'd4cb4f68-9136-48d3-9054-c1208ea274f0'"

requestParameters := &grapheducation.EducationClasseItemAssignmentCategoriesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &grapheducation.EducationClasseItemAssignmentCategoriesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

assignmentCategories, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").AssignmentCategories().Get(context.Background(), configuration)


```