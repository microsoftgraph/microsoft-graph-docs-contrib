---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "riskEventType eq 'unfamiliarFeatures' or riskLevel eq 'medium'"

requestParameters := &graphconfig.IdentityProtectionRiskDetectionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.IdentityProtectionRiskDetectionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityProtection().RiskDetections().Get(context.Background(), configuration)


```