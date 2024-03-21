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


requestParameters := &grapheducation.EducationClasseItemAssignmentItemCategoriesRequestBuilderGetQueryParameters{
	Orderby: [] string {"id"},
}
configuration := &grapheducation.EducationClasseItemAssignmentItemCategoriesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

categories, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Categories().Get(context.Background(), configuration)


```