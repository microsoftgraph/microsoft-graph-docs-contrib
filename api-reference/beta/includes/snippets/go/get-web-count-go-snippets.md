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
	Search: "\"displayName:Web\"",
	Count: true,
}
configuration := &graphconfig.ApplicationsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Applications().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```