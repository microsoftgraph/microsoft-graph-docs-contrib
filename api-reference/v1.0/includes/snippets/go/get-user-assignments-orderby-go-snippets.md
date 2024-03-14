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


requestParameters := &grapheducation.EducationMeAssignmentsRequestBuilderGetQueryParameters{
	Orderby: [] string {"createdDateTime"},
}
configuration := &grapheducation.EducationMeAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

assignments, err := graphClient.Education().Me().Assignments().Get(context.Background(), configuration)


```