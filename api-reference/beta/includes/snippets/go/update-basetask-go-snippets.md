---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBaseTask()
textBody := "String"
requestBody.SetTextBody(&textBody) 
bodyLastModifiedDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetBodyLastModifiedDateTime(&bodyLastModifiedDateTime) 
completedDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetCompletedDateTime(&completedDateTime) 
dueDateTime := graphmodels.NewDateTimeTimeZone()
requestBody.SetDueDateTime(dueDateTime)
startDateTime := graphmodels.NewDateTimeTimeZone()
requestBody.SetStartDateTime(startDateTime)
importance := graphmodels.STRING_IMPORTANCE 
requestBody.SetImportance(&importance) 
recurrence := graphmodels.NewPatternedRecurrence()
requestBody.SetRecurrence(recurrence)
displayName := "String"
requestBody.SetDisplayName(&displayName) 
status := graphmodels.STRING_TASKSTATUS_V2 
requestBody.SetStatus(&status) 
viewpoint := graphmodels.NewTaskViewpoint()
requestBody.SetViewpoint(viewpoint)

graphClient.Me().Tasks().ListsById("baseTaskList-id").TasksById("baseTask-id").Patch(requestBody)


```