---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}
requestParameters := &graphconfig.UserRequestBuilderGetQueryParameters{
	Count: true,
	OrderBy: [] string {"displayName"},
	Filter: "startswith(displayName,%20'a')",
}
configuration := &graphconfig.UserRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.GroupsById("group-id").TransitiveMembers().User().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```