---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  grapheducation "github.com/microsoftgraph/msgraph-sdk-go/education"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "id eq 'ff2c7fe6-91cd-57a4-aa62-5b9c6b73222a'"

requestParameters := &grapheducation.EducationClasseItemAssignmentItemSubmissionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &grapheducation.EducationClasseItemAssignmentItemSubmissionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

submissions, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Submissions().Get(context.Background(), configuration)


```