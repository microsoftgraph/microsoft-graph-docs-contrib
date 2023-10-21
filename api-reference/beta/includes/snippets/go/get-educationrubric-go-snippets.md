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



rubrics, err := graphClient.Education().Me().Rubrics().ByEducationRubricId("educationRubric-id").Get(context.Background(), nil)


```