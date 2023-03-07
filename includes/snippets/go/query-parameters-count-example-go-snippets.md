---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestCount := true

requestParameters := &graphconfig.MeContactsRequestBuilderGetQueryParameters{
	Count: &requestCount,
}
configuration := &graphconfig.MeContactsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Contacts().Get(context.Background(), configuration)


```