---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.ServicePrincipalRiskDetectionsRequestBuilderGetQueryParameters{
	Filter: "riskEventType%20eq%20'investigationsThreatIntelligence'%20or%20riskLevel%20eq%20'medium'",
}
options := &msgraphsdk.ServicePrincipalRiskDetectionsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.IdentityProtection().ServicePrincipalRiskDetections().Get(options)


```