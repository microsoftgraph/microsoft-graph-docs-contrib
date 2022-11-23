---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "startswith(displayName,'Eric')"

requestParameters := &graphconfig.UsersRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"displayName","signInActivity"},
}
configuration := &graphconfig.UsersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().Get(context.Background(), configuration)


```