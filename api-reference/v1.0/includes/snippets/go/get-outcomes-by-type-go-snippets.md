---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/education"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "isof('microsoft.graph.educationFeedbackResourceOutcome')"

requestParameters := &graphconfig.EducationClasseItemAssignmentItemSubmissionItemOutcomesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.EducationClasseItemAssignmentItemSubmissionItemOutcomesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Education().Classes().ByClasseId("educationClass-id").Assignments().ByAssignmentId("educationAssignment-id").Submissions().BySubmissionId("educationSubmission-id").Outcomes().Get(context.Background(), configuration)


```