---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.UserRequestBuilderGetQueryParameters{
	Select: [] string {"displayName","givenName","postalCode","identities"},
}
configuration := &graphconfig.UserRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.UsersById("user-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```