---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.MeContactsRequestBuilderGetQueryParameters{
	Select: [] string {"displayName","emailAddresses"},
}
configuration := &graphconfig.MeContactsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Contacts().Get(context.Background(), configuration)


```