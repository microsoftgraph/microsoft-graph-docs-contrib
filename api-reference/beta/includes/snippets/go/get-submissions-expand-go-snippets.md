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


requestParameters := &grapheducation.EducationClasseItemAssignmentItemSubmissionsRequestBuilderGetQueryParameters{
	Expand: [] string {"outcomes"},
}
configuration := &grapheducation.EducationClasseItemAssignmentItemSubmissionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

submissions, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Submissions().Get(context.Background(), configuration)


```