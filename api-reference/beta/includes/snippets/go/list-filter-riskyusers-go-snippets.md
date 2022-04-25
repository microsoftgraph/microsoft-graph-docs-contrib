---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.RiskyUsersRequestBuilderGetQueryParameters{
	Filter: "riskLevel%20eq%20microsoft.graph.riskLevel'medium'",
}
options := &msgraphsdk.RiskyUsersRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.IdentityProtection().RiskyUsers().Get(options)


```