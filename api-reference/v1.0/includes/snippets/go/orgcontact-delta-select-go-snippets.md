---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.DeltaRequestBuilderGetQueryParameters{
	Select: [] string {"displayName","jobTitle","mail"},
}
configuration := &graphconfig.DeltaRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Contacts().Delta().Get(context.Background(), configuration)


```