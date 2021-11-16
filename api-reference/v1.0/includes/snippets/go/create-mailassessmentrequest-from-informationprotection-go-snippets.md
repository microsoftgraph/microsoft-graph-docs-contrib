---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewThreatAssessmentRequest()
expectedAssessment := "block"
requestBody.SetExpectedAssessment(&expectedAssessment)
category := "spam"
requestBody.SetCategory(&category)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.mailAssessmentRequest",
	"recipientEmail": "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
	"messageUri": "https://graph.microsoft.com/v1.0/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=",
}
options := &msgraphsdk.ThreatAssessmentRequestsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.InformationProtection().ThreatAssessmentRequests().Post(options)


```