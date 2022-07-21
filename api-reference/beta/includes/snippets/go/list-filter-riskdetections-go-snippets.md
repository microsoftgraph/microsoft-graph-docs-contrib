---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.RiskDetectionsRequestBuilderGetQueryParameters{
	Filter: "riskEventType eq 'unfamiliarFeatures' or riskLevel eq 'medium'",
}
configuration := &graphconfig.RiskDetectionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityProtection().RiskDetections().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```