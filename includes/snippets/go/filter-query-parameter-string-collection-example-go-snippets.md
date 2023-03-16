---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestFilter := "imAddresses/any"

requestParameters := &graphconfig.UsersRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.UsersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().Get(context.Background(), configuration)


```