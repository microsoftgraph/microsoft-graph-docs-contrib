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


requestParameters := &grapheducation.EducationClasseItemAssignmentItemResourcesRequestBuilderGetQueryParameters{
	Orderby: [] string {"resource/createdDateTime"},
}
configuration := &grapheducation.EducationClasseItemAssignmentItemResourcesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

resources, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Resources().Get(context.Background(), configuration)


```