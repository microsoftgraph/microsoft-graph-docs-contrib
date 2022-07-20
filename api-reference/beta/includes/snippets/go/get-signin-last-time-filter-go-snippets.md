---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.UsersRequestBuilderGetQueryParameters{
	Filter: "startswith(displayName,'Eric')",
	Select: [] string {"displayName","signInActivity"},
}
configuration := &graphconfig.UsersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```