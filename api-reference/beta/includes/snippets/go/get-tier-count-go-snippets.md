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
	Search: "\"displayName:tier\"",
	Select: [] string {"displayName","id"},
}
configuration := &graphconfig.UserRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.GroupsById("group-id").TransitiveMembers().User().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```