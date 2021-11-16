---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.B2xUserFlowsRequestBuilderGetQueryParameters{
	Expand: "identityProviders",
}
options := &msgraphsdk.B2xUserFlowsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Identity().B2xUserFlows().Get(options)


```