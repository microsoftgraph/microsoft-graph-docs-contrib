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



engagementAsyncOperations, err := graphClient.EmployeeExperience().EngagementAsyncOperations().ByEngagementAsyncOperationId("engagementAsyncOperation-id").Get(context.Background(), nil)


```