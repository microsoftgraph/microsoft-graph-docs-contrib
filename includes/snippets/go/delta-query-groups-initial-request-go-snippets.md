---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.GroupsDelta()RequestBuilderGetQueryParameters{
	Select: [] string {"displayName","description","members"},
}
configuration := &graphconfig.GroupsDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().Delta().Get(context.Background(), configuration)


```