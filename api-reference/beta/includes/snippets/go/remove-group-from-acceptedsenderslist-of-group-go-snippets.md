---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.RefRequestBuilderDeleteQueryParameters{
	Id: "https://graph.microsoft.com/beta/groups/{other-group-id}",
}
configuration := &graphconfig.RefRequestBuilderDeleteRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.GroupsById("group-id").AcceptedSenders().$ref().DeleteWithRequestConfigurationAndResponseHandler(configuration, nil)


```