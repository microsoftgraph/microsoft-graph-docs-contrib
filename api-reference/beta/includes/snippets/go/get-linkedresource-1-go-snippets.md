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



linkedResources, err := graphClient.Me().Todo().Lists().ByTodoTaskListId("todoTaskList-id").Tasks().ByTodoTaskId("todoTask-id").LinkedResources().ByLinkedResourceId("linkedResource-id").Get(context.Background(), nil)


```