---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.UsersRequestBuilderGetQueryParameters{
	Search: "%22displayName:wa%22%20OR%20%22displayName:ad%22",
	OrderbydisplayName: "",
	Count: true,
}
headers := map[string]string{
	"ConsistencyLevel": "eventual"
}
options := &msgraphsdk.UsersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
	Headers: headers,
}
result, err := graphClient.Users().GetWithRequestConfigurationAndResponseHandler(options, nil)


```