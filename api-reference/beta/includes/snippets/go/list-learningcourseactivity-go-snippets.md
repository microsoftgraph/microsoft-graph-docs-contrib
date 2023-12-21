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



learningCourseActivities, err := graphClient.Users().ByUserId("user-id").EmployeeExperience().LearningCourseActivities().Get(context.Background(), nil)


```