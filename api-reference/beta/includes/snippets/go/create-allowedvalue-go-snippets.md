---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAllowedValue()
id := "Alpine"
requestBody.SetId(&id)
isActive := "true"
requestBody.SetIsActive(&isActive)
options := &msgraphsdk.AllowedValuesRequestBuilderPostOptions{
	Body: requestBody,
}
customSecurityAttributeDefinitionId := "customSecurityAttributeDefinition-id"
result, err := graphClient.Directory().CustomSecurityAttributeDefinitionsById(&customSecurityAttributeDefinitionId).AllowedValues().Post(options)


```