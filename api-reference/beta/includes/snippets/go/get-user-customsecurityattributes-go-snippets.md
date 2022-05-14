---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.UserRequestBuilderGetQueryParameters{
	Select: "customSecurityAttributes",
}
options := &msgraphsdk.UserRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
userId := "user-id"
result, err := graphClient.UsersById(&userId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```