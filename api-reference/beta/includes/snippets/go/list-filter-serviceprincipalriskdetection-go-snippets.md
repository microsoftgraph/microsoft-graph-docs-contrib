---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ServicePrincipalRiskDetectionsRequestBuilderGetQueryParameters{
	Filter: "riskEventType eq 'investigationsThreatIntelligence' or riskLevel eq 'medium'",
}
configuration := &graphconfig.ServicePrincipalRiskDetectionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityProtection().ServicePrincipalRiskDetections().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```