---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestDeltatoken := "w0vf2jHg2mBXU-I2AK0FSWl0dopNtG8u5YoM"

requestParameters := &graphusers.ItemTodoListItemTasksDelta()RequestBuilderGetQueryParameters{
	Deltatoken: &requestDeltatoken,
}
configuration := &graphusers.ItemTodoListItemTasksDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

delta(), err := graphClient.Me().Todo().Lists().ByTodoTaskListId("todoTaskList-id").Tasks().Delta().Get(context.Background(), configuration)


```