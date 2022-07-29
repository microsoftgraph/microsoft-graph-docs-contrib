---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.RefRequestBuilderDeleteQueryParameters{
	Id: "https://graph.microsoft.com/v1.0/users/{user-id}",
}
configuration := &graphconfig.RefRequestBuilderDeleteRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.GroupsById("group-id").RejectedSenders().$ref().DeleteWithRequestConfigurationAndResponseHandler(configuration, nil)


```