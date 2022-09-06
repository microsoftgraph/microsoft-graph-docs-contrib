---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestId := "https://graph.microsoft.com/v1.0/users/{user-id}"

requestParameters := &graphconfig.RefRequestBuilderDeleteQueryParameters{
	Id: &requestId,
}
configuration := &graphconfig.RefRequestBuilderDeleteRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.GroupsById("group-id").AcceptedSenders().$ref().DeleteWithRequestConfigurationAndResponseHandler(configuration, nil)


```