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



requestFilter := "id eq 'bc98d7cd-7cf3-449c-b1b9-3a9683024d4e'"

requestParameters := &grapheducation.EducationClasseItemAssignmentItemResourcesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &grapheducation.EducationClasseItemAssignmentItemResourcesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

resources, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Resources().Get(context.Background(), configuration)


```