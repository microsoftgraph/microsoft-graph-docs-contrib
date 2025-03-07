---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewLearningCourseActivity()
completedDateTime := null
requestBody.SetCompletedDateTime(&completedDateTime) 
completionPercentage := int32(30)
requestBody.SetCompletionPercentage(&completionPercentage) 
externalCourseActivityId := "12a2228a-e020-11ec-9d64-0242ac120002"
requestBody.SetExternalCourseActivityId(&externalCourseActivityId) 
learningContentId := "57baf9dc-e020-11ec-9d64-0242ac120002"
requestBody.SetLearningContentId(&learningContentId) 
learningProviderId := "01e8f81b-3060-4dec-acf0-0389665a0a38"
requestBody.SetLearningProviderId(&learningProviderId) 
startedDateTime , err := time.Parse(time.RFC3339, "2021-05-11T22:57:17+00:00")
requestBody.SetStartedDateTime(&startedDateTime) 
status := graphmodels.INPROGRESS_COURSESTATUS 
requestBody.SetStatus(&status) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
learningCourseActivities, err := graphClient.EmployeeExperience().LearningProviders().ByLearningProviderId("learningProvider-id").LearningCourseActivities().ByLearningCourseActivityId("learningCourseActivity-id").Patch(context.Background(), requestBody, nil)


```