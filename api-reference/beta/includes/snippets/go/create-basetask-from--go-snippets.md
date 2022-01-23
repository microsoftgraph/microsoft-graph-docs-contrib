---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewBaseTask()
body := msgraphsdk.NewItemBody()
requestBody.SetBody(body)
body.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.itemBody",
}
bodyLastModifiedDateTime, err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetBodyLastModifiedDateTime(&bodyLastModifiedDateTime)
completedDateTime, err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetCompletedDateTime(&completedDateTime)
dueDateTime := msgraphsdk.NewDateTimeTimeZone()
requestBody.SetDueDateTime(dueDateTime)
dueDateTime.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.dateTimeTimeZone",
}
startDateTime := msgraphsdk.NewDateTimeTimeZone()
requestBody.SetStartDateTime(startDateTime)
startDateTime.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.dateTimeTimeZone",
}
importance := "String"
requestBody.SetImportance(&importance)
recurrence := msgraphsdk.NewPatternedRecurrence()
requestBody.SetRecurrence(recurrence)
recurrence.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.patternedRecurrence",
}
displayName := "String"
requestBody.SetDisplayName(&displayName)
status := "String"
requestBody.SetStatus(&status)
personalProperties := msgraphsdk.NewPersonalTaskProperties()
requestBody.SetPersonalProperties(personalProperties)
personalProperties.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.personalTaskProperties",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.baseTask",
}
options := &msgraphsdk.TasksRequestBuilderPostOptions{
	Body: requestBody,
}
baseTaskListId := "baseTaskList-id"
result, err := graphClient.Me().Tasks().ListsById(&baseTaskListId).Tasks().Post(options)


```