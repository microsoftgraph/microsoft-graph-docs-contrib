---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphinformationprotection "github.com/microsoftgraph/msgraph-beta-sdk-go/informationprotection"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("User-Agent", "ContosoLOBApp/1.0")

configuration := &graphinformationprotection.InformationProtectionPolicyLabelsEvaluateClassificationResultsRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphinformationprotection.NewEvaluateClassificationResultsPostRequestBody()
contentInfo := graphmodels.NewContentInfo()
format := graphmodels.DEFAULT_CONTENTFORMAT 
contentInfo.SetFormat(&format) 
identifier := null
contentInfo.SetIdentifier(&identifier) 
state := graphmodels.REST_CONTENTSTATE 
contentInfo.SetState(&state) 
additionalData := map[string]interface{}{
	"odataType" : "#microsoft.graph.contentFormat", 
	"odataType" : "#microsoft.graph.contentState", 
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

evaluateClassificationResults, err := graphClient.InformationProtection().Policy().Labels().EvaluateClassificationResults().Post(context.Background(), requestBody, configuration)


```