---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "riskEventType eq 'investigationsThreatIntelligence' or riskLevel eq 'medium'"

requestParameters := &graphconfig.ServicePrincipalRiskDetectionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.ServicePrincipalRiskDetectionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityProtection().ServicePrincipalRiskDetections().Get(context.Background(), configuration)


```