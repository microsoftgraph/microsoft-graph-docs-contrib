---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewThreatAssessmentRequest()
expectedAssessment := "block"
requestBody.SetExpectedAssessment(&expectedAssessment)
category := "malware"
requestBody.SetCategory(&category)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.emailFileAssessmentRequest",
	"recipientEmail": "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
	"contentData": "UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....",
}
options := &msgraphsdk.ThreatAssessmentRequestsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.InformationProtection().ThreatAssessmentRequests().Post(options)


```