---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.UserItemRequestBuilderGetQueryParameters{
	Select: [] string {"customSecurityAttributes"},
}
configuration := &graphconfig.UserItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.UsersById("user-id").Get(context.Background(), configuration)


```