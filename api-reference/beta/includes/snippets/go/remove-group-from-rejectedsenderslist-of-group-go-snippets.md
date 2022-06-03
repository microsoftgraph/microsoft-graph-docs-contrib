---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.RefRequestBuilderDeleteQueryParameters{
	Id: "https://graph.microsoft.com/beta/groups/%7Bother-group-id%7D",
}
options := &msgraphsdk.RefRequestBuilderDeleteRequestConfiguration{
	QueryParameters: requestParameters,
}
groupId := "group-id"
graphClient.GroupsById(&groupId).RejectedSenders().$ref().DeleteWithRequestConfigurationAndResponseHandler(options, nil)


```