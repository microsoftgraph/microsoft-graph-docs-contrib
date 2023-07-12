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
assignedDateTime , err := time.Parse(time.RFC3339, "2021-05-11T22:57:17+00:00")
requestBody.SetAssignedDateTime(&assignedDateTime) 
assignmentType := graphmodels.REQUIRED_ASSIGNMENTTYPE 
requestBody.SetAssignmentType(&assignmentType) 
assignerUserId := "cea1684d-57dc-438d-a9d1-e666ec1a7f3d"
requestBody.SetAssignerUserId(&assignerUserId) 
completedDateTime := null
requestBody.SetCompletedDateTime(&completedDateTime) 
completionPercentage := int32(20)
requestBody.SetCompletionPercentage(&completionPercentage) 
learningProviderId := "01e8f81b-3060-4dec-acf0-0389665a0a38"
requestBody.SetLearningProviderId(&learningProviderId) 
dueDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2022-09-22T16:05:00.0000000"
dueDateTime.SetDateTime(&dateTime) 
timeZone := "UTC"
dueDateTime.SetTimeZone(&timeZone) 
requestBody.SetDueDateTime(dueDateTime)
externalCourseActivityId := "12a2228a-e020-11ec-9d64-0242ac120002"
requestBody.SetExternalCourseActivityId(&externalCourseActivityId) 
learningContentId := "57baf9dc-e020-11ec-9d64-0242ac120002"
requestBody.SetLearningContentId(&learningContentId) 
learnerUserId := "7ba2228a-e020-11ec-9d64-0242ac120002"
requestBody.SetLearnerUserId(&learnerUserId) 
notes := graphmodels.NewItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
notes.SetContentType(&contentType) 
content := "required assignment added for user"
notes.SetContent(&content) 
requestBody.SetNotes(notes)
status := graphmodels.INPROGRESS_COURSESTATUS 
requestBody.SetStatus(&status) 

result, err := graphClient.EmployeeExperience().LearningProviders().ByLearningProviderId("learningProvider-id").LearningCourseActivities().ByLearningCourseActivitieId("learningCourseActivity-id").Patch(context.Background(), requestBody, nil)


```