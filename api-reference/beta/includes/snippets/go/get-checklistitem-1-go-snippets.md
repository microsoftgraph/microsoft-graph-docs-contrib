---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



checklistItems, err := graphClient.Me().Todo().Lists().ByTodoTaskListId("todoTaskList-id").Tasks().ByTodoTaskId("todoTask-id").ChecklistItems().ByChecklistItemId("checklistItem-id").Get(context.Background(), nil)


```