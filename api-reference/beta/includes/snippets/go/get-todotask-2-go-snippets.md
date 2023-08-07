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



tasks, err := graphClient.Me().Todo().Lists().ByTodoTaskListId("todoTaskList-id").Tasks().Get(context.Background(), nil)


```