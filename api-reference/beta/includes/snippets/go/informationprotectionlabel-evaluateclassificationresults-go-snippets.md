---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphinformationprotection "github.com/microsoftgraph/msgraph-beta-sdk-go/informationprotection"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("User-Agent", "ContosoLOBApp/1.0")

configuration := &graphinformationprotection.PolicyLabelsEvaluateClassificationResultsRequestBuilderPostRequestConfiguration{
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
evaluateClassificationResults, err := graphClient.InformationProtection().Policy().Labels().EvaluateClassificationResults().PostAsEvaluateClassificationResultsPostResponse(context.Background(), requestBody, configuration)


```