---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.UsersRequestBuilderGetQueryParameters{
	Filter: "startswith(displayName,'Eric')",
	Select: "displayName,signInActivity",
}
options := &msgraphsdk.UsersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Users().GetWithRequestConfigurationAndResponseHandler(options, nil)


```