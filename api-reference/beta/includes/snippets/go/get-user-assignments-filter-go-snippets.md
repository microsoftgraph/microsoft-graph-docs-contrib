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



requestFilter := "dueDateTime eq 2050-05-18T17:00:00Z"

requestParameters := &grapheducation.EducationMeAssignmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &grapheducation.EducationMeAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

assignments, err := graphClient.Education().Me().Assignments().Get(context.Background(), configuration)


```