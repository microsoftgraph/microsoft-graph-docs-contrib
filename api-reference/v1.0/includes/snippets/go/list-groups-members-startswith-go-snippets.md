---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}
requestParameters := &graphconfig.MembersRequestBuilderGetQueryParameters{
	Count: true,
	Filter: "startswith(displayName,%20'a')",
}
configuration := &graphconfig.MembersRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.GroupsById("group-id").Members().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```