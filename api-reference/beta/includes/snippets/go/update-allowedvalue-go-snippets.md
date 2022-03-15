---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAllowedValue()
isActive := "false"
requestBody.SetIsActive(&isActive)
options := &msgraphsdk.AllowedValueRequestBuilderPatchOptions{
	Body: requestBody,
}
customSecurityAttributeDefinitionId := "customSecurityAttributeDefinition-id"
allowedValueId := "allowedValue-id"
graphClient.Directory().CustomSecurityAttributeDefinitionsById(&customSecurityAttributeDefinitionId).AllowedValuesById(&allowedValueId).Patch(options)


```