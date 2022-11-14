---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}
requestParameters := &graphconfig.GroupsRequestBuilderGetQueryParameters{
	Search: "\"displayName:Video\" OR \"description:prod\"",
	Orderby: [] string {"displayName"},
	Count: true,
}
configuration := &graphconfig.GroupsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```