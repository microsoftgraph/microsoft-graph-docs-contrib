---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ThreatAssessmentRequestRequestBuilderGetQueryParameters{
	Expand: [] string {"results"},
}
configuration := &graphconfig.ThreatAssessmentRequestRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.InformationProtection().ThreatAssessmentRequestsById("threatAssessmentRequest-id").Get(context.Background(), configuration)


```