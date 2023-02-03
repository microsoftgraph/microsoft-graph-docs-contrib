---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "riskEventType eq 'investigationsThreatIntelligence' or riskLevel eq 'medium'"

requestParameters := &graphconfig.IdentityProtectionServicePrincipalRiskDetectionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.IdentityProtectionServicePrincipalRiskDetectionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityProtection().ServicePrincipalRiskDetections().Get(context.Background(), configuration)


```