---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)


requestDeltatoken := "w0vf2jHg2mBXU-I2AK0FSWl0dopNtG8u5YoM"

requestParameters := &graphusers.ItemTodoListItemTasksDeltaWithRequestBuilderGetQueryParameters{
	Deltatoken: &requestDeltatoken,
}
configuration := &graphusers.ItemTodoListItemTasksDeltaWithRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
delta, err := graphClient.Me().Todo().Lists().ByTodoTaskListId("todoTaskList-id").Tasks().Delta().GetAsDeltaGetResponse(context.Background(), configuration)


```