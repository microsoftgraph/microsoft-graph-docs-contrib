---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}

requestCount := true
requestSearch := "\"displayName:Pr\""

requestParameters := &graphconfig.UserRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Orderby: [] string {"displayName"},
	Search: &requestSearch,
	Select: [] string {"displayName","id"},
}
configuration := &graphconfig.UserRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.GroupsById("group-id").Members().User().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```