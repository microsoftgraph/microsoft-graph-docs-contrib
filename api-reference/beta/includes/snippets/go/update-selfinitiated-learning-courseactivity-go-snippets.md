---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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
status := graphmodels.INPROGRESS_COURSESTATUS 
requestBody.SetStatus(&status) 
additionalData := map[string]interface{}{
	"startedDateTime" : "2021-05-11T22:57:17+00:00", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.EmployeeExperience().LearningCourseActivities().ByLearningCourseActivitieId("learningCourseActivity-id").Patch(context.Background(), requestBody, nil)


```