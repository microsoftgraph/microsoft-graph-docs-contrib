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



externalcourseActivityId := "{externalcourseActivityId}"
learningCourseActivities, err := graphClient.EmployeeExperience().LearningProviders().ByLearningProviderId("learningProvider-id").LearningCourseActivitiesWithExternalcourseActivityId(&externalcourseActivityId).Get(context.Background(), nil)


```