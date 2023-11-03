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



learningCourseActivities, err := graphClient.EmployeeExperience().LearningCourseActivities().ByLearningCourseActivityId("learningCourseActivity-id").Get(context.Background(), nil)


```