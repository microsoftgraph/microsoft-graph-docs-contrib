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


requestParameters := &grapheducation.EducationClasseItemAssignmentCategoriesRequestBuilderGetQueryParameters{
	Orderby: [] string {"displayName"},
}
configuration := &grapheducation.EducationClasseItemAssignmentCategoriesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

assignmentCategories, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").AssignmentCategories().Get(context.Background(), configuration)


```