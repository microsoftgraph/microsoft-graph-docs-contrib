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


requestBody := graphmodels.NewLinkedResource()
webUrl := "http://microsoft.com"
requestBody.SetWebUrl(&webUrl) 
applicationName := "Microsoft"
requestBody.SetApplicationName(&applicationName) 
displayName := "Microsoft"
requestBody.SetDisplayName(&displayName) 

linkedResources, err := graphClient.Me().Todo().Lists().ByTodoTaskListId("todoTaskList-id").Tasks().ByTodoTaskId("todoTask-id").LinkedResources().ByLinkedResourceId("linkedResource-id").Patch(context.Background(), requestBody, nil)


```