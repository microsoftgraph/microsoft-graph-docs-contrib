---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewThreatAssessmentRequest()
"@odata.type" := "#microsoft.graph.urlAssessmentRequest"
requestBody.Set"@odata.type"(&"@odata.type") 
expectedAssessment := graphmodels.BLOCK_THREATEXPECTEDASSESSMENT 
requestBody.SetExpectedAssessment(&expectedAssessment) 
category := graphmodels.PHISHING_THREATCATEGORY 
requestBody.SetCategory(&category) 
additionalData := map[string]interface{}{
	"url" : "http://test.com", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.InformationProtection().ThreatAssessmentRequests().Post(requestBody)


```