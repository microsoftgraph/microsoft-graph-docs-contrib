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
completionPercentage := int32(20)
requestBody.SetCompletionPercentage(&completionPercentage) 
externalCourseActivityId := "12a2228a-e020-11ec-9d64-0242ac120002"
requestBody.SetExternalCourseActivityId(&externalCourseActivityId) 
learningContentId := "57baf9dc-e020-11ec-9d64-0242ac120002"
requestBody.SetLearningContentId(&learningContentId) 
learnerUserId := "7ba2228a-e020-11ec-9d64-0242ac120002"
requestBody.SetLearnerUserId(&learnerUserId) 
status := graphmodels.INPROGRESS_COURSESTATUS 
requestBody.SetStatus(&status) 
additionalData := map[string]interface{}{
	"startedDateTime" : "2021-05-21T22:57:17+00:00", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.EmployeeExperience().LearningProviders().ByLearningProviderId("learningProvider-id").LearningCourseActivities().Post(context.Background(), requestBody, nil)


```