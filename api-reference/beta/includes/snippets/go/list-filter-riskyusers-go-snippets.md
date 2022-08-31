---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "riskLevel eq microsoft.graph.riskLevel'medium'"

requestParameters := &graphconfig.RiskyUsersRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.RiskyUsersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityProtection().RiskyUsers().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```