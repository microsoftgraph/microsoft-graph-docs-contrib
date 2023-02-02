---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestId := "https://graph.microsoft.com/v1.0/users/{user-id}"

requestParameters := &graphconfig.GroupItemAcceptedSenders$refRequestBuilderDeleteQueryParameters{
	Id: &requestId,
}
configuration := &graphconfig.GroupItemAcceptedSenders$refRequestBuilderDeleteRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.GroupsById("group-id").AcceptedSenders().$ref().Delete(context.Background(), configuration)


```