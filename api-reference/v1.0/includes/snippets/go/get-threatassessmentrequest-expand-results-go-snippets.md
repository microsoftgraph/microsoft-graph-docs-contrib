---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.InformationProtectionThreatAssessmentRequestItemRequestBuilderGetQueryParameters{
	Expand: [] string {"results"},
}
configuration := &graphconfig.InformationProtectionThreatAssessmentRequestItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.InformationProtection().ThreatAssessmentRequestsById("threatAssessmentRequest-id").Get(context.Background(), configuration)


```