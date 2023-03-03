---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("User-Agent", "ContosoLOBApp/1.0")

configuration := &graphconfig.InformationProtectionPolicyLabelsEvaluateClassificationResultsRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewEvaluateClassificationResultsPostRequestBody()
contentInfo := graphmodels.NewContentInfo()
format := graphmodels.DEFAULT_CONTENTFORMAT 
contentInfo.SetFormat(&format) 
identifier := null
contentInfo.SetIdentifier(&identifier) 
state := graphmodels.REST_CONTENTSTATE 
contentInfo.SetState(&state) 
additionalData := map[string]interface{}{
	"format@odata.type" : "#microsoft.graph.contentFormat", 
	"state@odata.type" : "#microsoft.graph.contentState", 
}
contentInfo.SetAdditionalData(additionalData)
requestBody.SetContentInfo(contentInfo)


classificationResult := graphmodels.NewClassificationResult()
sensitiveTypeId := "cb353f78-2b72-4c3c-8827-92ebe4f69fdf"
classificationResult.SetSensitiveTypeId(&sensitiveTypeId) 
count := int32(4)
classificationResult.SetCount(&count) 
confidenceLevel := int32(75)
classificationResult.SetConfidenceLevel(&confidenceLevel) 

classificationResults := []graphmodels.ClassificationResultable {
	classificationResult,

}
requestBody.SetClassificationResults(classificationResults)

result, err := graphClient.InformationProtection().Policy().Labels().EvaluateClassificationResults().Post(context.Background(), requestBody, configuration)


```