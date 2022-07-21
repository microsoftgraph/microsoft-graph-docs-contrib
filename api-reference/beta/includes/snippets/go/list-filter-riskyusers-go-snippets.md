---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.RiskyUsersRequestBuilderGetQueryParameters{
	Filter: "riskLevel eq microsoft.graph.riskLevel'medium'",
}
configuration := &graphconfig.RiskyUsersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityProtection().RiskyUsers().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```