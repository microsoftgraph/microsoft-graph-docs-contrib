---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



assignments, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Get(context.Background(), nil)


```