---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
contentInfo := msgraphsdk.NewContentInfo()
requestBody.SetContentInfo(contentInfo)
format := "default"
contentInfo.SetFormat(&format)
contentInfo.SetIdentifier(nil)
state := "rest"
contentInfo.SetState(&state)
contentInfo.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.contentInfo",
	"format@odata.type": "#microsoft.graph.contentFormat",
	"state@odata.type": "#microsoft.graph.contentState",
}
requestBody.SetClassificationResults( []ClassificationResult {
	msgraphsdk.NewClassificationResult(),
	SetAdditionalData(map[string]interface{}{
		"sensitiveTypeId": "cb353f78-2b72-4c3c-8827-92ebe4f69fdf",
		"count": ,
		"confidenceLevel": ,
	}
}
headers := map[string]string{
	"User-Agent": "ContosoLOBApp/1.0"
}
options := &msgraphsdk.EvaluateClassificationResultsRequestBuilderPostOptions{
	Body: requestBody,
	H: headers,
}
result, err := graphClient.InformationProtection().Policy().Labels().EvaluateClassificationResults().Post(options)


```