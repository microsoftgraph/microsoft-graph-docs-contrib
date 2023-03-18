---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewEducationAssignmentDefaults()
addedStudentAction := graphmodels.ASSIGNIFOPEN_EDUCATIONADDEDSTUDENTACTION 
requestBody.SetAddedStudentAction(&addedStudentAction) 
addToCalendarAction := graphmodels.STUDENTSANDTEAMOWNERS_EDUCATIONADDTOCALENDAROPTIONS 
requestBody.SetAddToCalendarAction(&addToCalendarAction) 
notificationChannelUrl := "https://graph.microsoft.com/beta/teams('id')/channels('id')"
requestBody.SetNotificationChannelUrl(&notificationChannelUrl) 

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentDefaults().Patch(context.Background(), requestBody, nil)


```