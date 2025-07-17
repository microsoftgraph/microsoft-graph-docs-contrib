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
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("User-Agent", "ContosoLOBApp/1.0")

configuration := &graphusers.ItemSecurityInformationProtectionSensitivityLabelsMicrosoft.graph.security.evaluateClassificationResultsRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphusers.NewEvaluateClassificationResultsPostRequestBody()
contentInfo := graphmodelssecurity.NewContentInfo()
contentFormat := "File"
contentInfo.SetContentFormat(&contentFormat) 
identifier := "c:\user\new.docx"
contentInfo.SetIdentifier(&identifier) 
state := graphmodels.REST_CONTENTSTATE 
contentInfo.SetState(&state) 
metadata := []graphmodelssecurity.KeyValuePairable {

}
contentInfo.SetMetadata(metadata)
additionalData := map[string]interface{}{
	"format@odata.type" : "#microsoft.graph.security.contentFormat", 
	"format" : "default", 
	"state@odata.type" : "#microsoft.graph.security.contentState", 
}
contentInfo.SetAdditionalData(additionalData)
requestBody.SetContentInfo(contentInfo)


classificationResult := graphmodelssecurity.NewClassificationResult()
sensitiveTypeId := "50842eb7-edc8-4019-85dd-5a5c1f2bb085"
classificationResult.SetSensitiveTypeId(&sensitiveTypeId) 
count := int32(7)
classificationResult.SetCount(&count) 
confidenceLevel := int32(99)
classificationResult.SetConfidenceLevel(&confidenceLevel) 

classificationResults := []graphmodelssecurity.ClassificationResultable {
	classificationResult,
}
requestBody.SetClassificationResults(classificationResults)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
microsoftGraphSecurityEvaluateClassificationResults, err := graphClient.Users().ByUserId("user-id").Security().InformationProtection().SensitivityLabels().MicrosoftGraphSecurityEvaluateClassificationResults().PostAsEvaluateClassificationResultsPostResponse(context.Background(), requestBody, configuration)


```