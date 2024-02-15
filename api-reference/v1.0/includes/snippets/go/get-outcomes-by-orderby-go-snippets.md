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


requestParameters := &grapheducation.EducationClasseItemAssignmentItemSubmissionItemOutcomesRequestBuilderGetQueryParameters{
	Orderby: [] string {"id"},
}
configuration := &grapheducation.EducationClasseItemAssignmentItemSubmissionItemOutcomesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

outcomes, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Submissions().ByEducationSubmissionId("educationSubmission-id").Outcomes().Get(context.Background(), configuration)


```