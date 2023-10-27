---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTodoTask()
dueDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2020-07-25T16:00:00"
dueDateTime.SetDateTime(&dateTime) 
timeZone := "Eastern Standard Time"
dueDateTime.SetTimeZone(&timeZone) 
requestBody.SetDueDateTime(dueDateTime)

tasks, err := graphClient.Me().Todo().Lists().ByTodoTaskListId("todoTaskList-id").Tasks().ByTodoTaskId("todoTask-id").Patch(context.Background(), requestBody, nil)


```