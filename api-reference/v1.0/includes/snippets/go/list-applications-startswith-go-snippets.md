---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}
requestParameters := &graphconfig.ApplicationsRequestBuilderGetQueryParameters{
	Filter: "startswith(displayName,%20'a')",
	Count: true,
	Top: 1,
	Orderby: [] string {"displayName"},
}
configuration := &graphconfig.ApplicationsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Applications().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```