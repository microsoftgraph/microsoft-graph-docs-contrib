---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestFilter := "members/any"

requestParameters := &graphconfig.UserItemChatsRequestBuilderGetQueryParameters{
	Expand: [] string {"members"},
	Filter: &requestFilter,
}
configuration := &graphconfig.UserItemChatsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.UsersById("user-id").Chats().Get(context.Background(), configuration)


```