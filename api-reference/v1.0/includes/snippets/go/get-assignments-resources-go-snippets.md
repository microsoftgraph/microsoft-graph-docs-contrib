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


requestParameters := &grapheducation.EducationClasseItemAssignmentsRequestBuilderGetQueryParameters{
	Expand: [] string {"resources"},
}
configuration := &grapheducation.EducationClasseItemAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

assignments, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().Get(context.Background(), configuration)


```