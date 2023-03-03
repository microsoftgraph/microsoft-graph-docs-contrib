---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.GroupItemRequestBuilderGetQueryParameters{
	Select: [] string {"allowExternalSenders","autoSubscribeNewMembers","isSubscribedByMail","unseenCount"},
}
configuration := &graphconfig.GroupItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.GroupsById("group-id").Get(context.Background(), configuration)


```