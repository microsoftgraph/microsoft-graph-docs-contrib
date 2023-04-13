---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestId := "https://graph.microsoft.com/beta/users/{id}"

requestParameters := &graphconfig.GroupItemRejectedSenders$refRequestBuilderDeleteQueryParameters{
	Id: &requestId,
}
configuration := &graphconfig.GroupItemRejectedSenders$refRequestBuilderDeleteRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.GroupsById("group-id").RejectedSenders().$ref().Delete(context.Background(), configuration)


```