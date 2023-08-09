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



requestTop := int32(2)

requestParameters := &grapheducation.EducationClasseItemAssignmentsDelta()RequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &grapheducation.EducationClasseItemAssignmentsDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

delta(), err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().Delta().Get(context.Background(), configuration)


```