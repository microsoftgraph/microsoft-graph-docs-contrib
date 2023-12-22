---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTodoTaskList()
displayName := "Vacation Plan"
requestBody.SetDisplayName(&displayName) 

lists, err := graphClient.Me().Todo().Lists().ByTodoTaskListId("todoTaskList-id").Patch(context.Background(), requestBody, nil)


```