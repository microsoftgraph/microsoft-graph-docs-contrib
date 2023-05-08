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
learningProviderId := "01e8f81b-3060-4dec-acf0-0389665a0a38"
requestBody.SetLearningProviderId(&learningProviderId) 
learnerUserId := "7ba2228a-e020-11ec-9d64-0242ac120002"
requestBody.SetLearnerUserId(&learnerUserId) 
status := graphmodels.NOTSTARTED_COURSESTATUS 
requestBody.SetStatus(&status) 
additionalData := map[string]interface{}{
	"assignedDateTime" : "2021-05-11T22:57:17+00:00", 
	"assignmentType" : "required", 
	"assignerUserId" : "cea1684d-57dc-438d-a9d1-e666ec1a7f3d", 
dueDateTime := graphmodels.New()
dateTime := "2022-09-22T16:05:00.0000000"
dueDateTime.SetDateTime(&dateTime) 
timeZone := "UTC"
dueDateTime.SetTimeZone(&timeZone) 
	requestBody.SetDueDateTime(dueDateTime)
notes := graphmodels.New()
contentType := "text"
notes.SetContentType(&contentType) 
content := "required assignment added for user"
notes.SetContent(&content) 
	requestBody.SetNotes(notes)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.EmployeeExperience().LearningProviders().ByLearningProviderId("learningProvider-id").LearningCourseActivities().Post(context.Background(), requestBody, nil)


```