---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.ChatsRequestBuilderGetQueryParameters{
	Expand: "members",
	Filter: "members/any(o:%20o/displayname%20eq%20'Peter%20Parker')",
}
options := &msgraphsdk.ChatsRequestBuilderGetOptions{
	Q: requestParameters,
}
userId := "user-id"
result, err := graphClient.UsersById(&userId).Chats().Get(options)


```