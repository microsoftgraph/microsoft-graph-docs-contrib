---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCustomSecurityAttributeDefinition()
requestBody.SetAdditionalData(map[string]interface{}{
	"allowedValues@delta":  []Object {
	}
}
headers := map[string]string{
	"OData-Version": "4.01"
}
options := &msgraphsdk.CustomSecurityAttributeDefinitionRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
customSecurityAttributeDefinitionId := "customSecurityAttributeDefinition-id"
graphClient.Directory().CustomSecurityAttributeDefinitionsById(&customSecurityAttributeDefinitionId).PatchWithRequestConfigurationAndResponseHandler(requestBody, options, nil)


```