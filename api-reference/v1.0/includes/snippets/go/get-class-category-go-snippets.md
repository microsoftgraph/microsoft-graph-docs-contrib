---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



assignmentCategories, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").AssignmentCategories().ByEducationCategoryId("educationCategory-id").Get(context.Background(), nil)


```