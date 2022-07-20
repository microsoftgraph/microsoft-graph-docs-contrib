---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.PrivilegedOperationEventsRequestBuilderGetQueryParameters{
	Filter: "(creationDateTime ge 2017-06-25T07:00:00Z) and ",
	Count: true,
	Orderby: [] string {"creationDateTime desc"},
}
configuration := &graphconfig.PrivilegedOperationEventsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.PrivilegedOperationEvents().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```