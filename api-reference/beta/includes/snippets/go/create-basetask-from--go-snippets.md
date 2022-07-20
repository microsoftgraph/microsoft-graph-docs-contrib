---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBaseTask()
"@odata.type" := "#microsoft.graph.task"
requestBody.Set"@odata.type"(&"@odata.type") 
textBody := "String"
requestBody.SetTextBody(&textBody) 
bodyLastModifiedDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetBodyLastModifiedDateTime(&bodyLastModifiedDateTime) 
completedDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetCompletedDateTime(&completedDateTime) 
dueDateTime := graphmodels.NewDateTimeTimeZone()
"@odata.type" := "microsoft.graph.dateTimeTimeZone"
dueDateTime.Set"@odata.type"(&"@odata.type") 
requestBody.SetDueDateTime(dueDateTime)
startDateTime := graphmodels.NewDateTimeTimeZone()
"@odata.type" := "microsoft.graph.dateTimeTimeZone"
startDateTime.Set"@odata.type"(&"@odata.type") 
requestBody.SetStartDateTime(startDateTime)
importance := graphmodels.STRING_IMPORTANCE 
requestBody.SetImportance(&importance) 
recurrence := graphmodels.NewPatternedRecurrence()
"@odata.type" := "microsoft.graph.patternedRecurrence"
recurrence.Set"@odata.type"(&"@odata.type") 
requestBody.SetRecurrence(recurrence)
displayName := "String"
requestBody.SetDisplayName(&displayName) 
status := graphmodels.STRING_TASKSTATUS_V2 
requestBody.SetStatus(&status) 
viewpoint := graphmodels.NewTaskViewpoint()
"@odata.type" := "microsoft.graph.taskViewpoint"
viewpoint.Set"@odata.type"(&"@odata.type") 
requestBody.SetViewpoint(viewpoint)

result, err := graphClient.Me().Tasks().ListsById("baseTaskList-id").Tasks().Post(requestBody)


```