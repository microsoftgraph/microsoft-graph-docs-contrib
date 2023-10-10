---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewLearningCourseActivity()
completedDateTime := null
requestBody.SetCompletedDateTime(&completedDateTime) 
completionPercentage := int32(30)
requestBody.SetCompletionPercentage(&completionPercentage) 
externalcourseActivityId := "12a2228a-e020-11ec-9d64-0242ac120002"
requestBody.SetExternalcourseActivityId(&externalcourseActivityId) 
learningContentId := "57baf9dc-e020-11ec-9d64-0242ac120002"
requestBody.SetLearningContentId(&learningContentId) 
learningProviderId := "01e8f81b-3060-4dec-acf0-0389665a0a38"
requestBody.SetLearningProviderId(&learningProviderId) 
startedDateTime , err := time.Parse(time.RFC3339, "2021-05-11T22:57:17+00:00")
requestBody.SetStartedDateTime(&startedDateTime) 
status := graphmodels.INPROGRESS_COURSESTATUS 
requestBody.SetStatus(&status) 

learningCourseActivities, err := graphClient.EmployeeExperience().LearningProviders().ByLearningProviderId("learningProvider-id").LearningCourseActivities().ByLearningCourseActivityId("learningCourseActivity-id").Patch(context.Background(), requestBody, nil)


```