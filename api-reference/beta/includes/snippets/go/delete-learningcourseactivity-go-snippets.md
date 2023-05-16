---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.EmployeeExperience().LearningProviders().ByLearningProviderId("learningProvider-id").LearningCourseActivities().ByLearningCourseActivitieId("learningCourseActivity-id").Delete(context.Background(), nil)


```