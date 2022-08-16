---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}
requestParameters := &graphconfig.ContactsRequestBuilderGetQueryParameters{
	Filter: "startswith(displayName,'A')",
	Count: true,
	Top: 1,
	Orderby: [] string {"displayName"},
}
configuration := &graphconfig.ContactsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Contacts().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```