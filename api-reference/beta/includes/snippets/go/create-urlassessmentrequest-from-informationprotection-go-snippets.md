---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewThreatAssessmentRequest()
expectedAssessment := "block"
requestBody.SetExpectedAssessment(&expectedAssessment)
category := "phishing"
requestBody.SetCategory(&category)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.urlAssessmentRequest",
	"url": "http://test.com",
}
options := &msgraphsdk.ThreatAssessmentRequestsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.InformationProtection().ThreatAssessmentRequests().Post(options)


```