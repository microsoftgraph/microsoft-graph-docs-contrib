---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.ThreatAssessmentRequestRequestBuilderGetQueryParameters{
	Expand: "results",
}
options := &msgraphsdk.ThreatAssessmentRequestRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
threatAssessmentRequestId := "threatAssessmentRequest-id"
result, err := graphClient.InformationProtection().ThreatAssessmentRequestsById(&threatAssessmentRequestId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```