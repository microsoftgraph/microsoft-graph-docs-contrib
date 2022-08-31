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
requestFilter := "startswith(displayName,%20'a')"

requestParameters := &graphconfig.MembersRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Filter: &requestFilter,
}
configuration := &graphconfig.MembersRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.GroupsById("group-id").Members().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```