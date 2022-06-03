---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.UsersRequestBuilderGetQueryParameters{
	Select: "displayName,id",
	Filter: "identities/any(c:c/issuerAssignedId%20eq%20'j.smith@yahoo.com'%20and%20c/issuer%20eq%20'contoso.onmicrosoft.com')",
}
options := &msgraphsdk.UsersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Users().GetWithRequestConfigurationAndResponseHandler(options, nil)


```