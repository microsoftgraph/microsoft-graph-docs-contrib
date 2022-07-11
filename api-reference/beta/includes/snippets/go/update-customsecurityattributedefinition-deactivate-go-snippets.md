---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCustomSecurityAttributeDefinition()
status := "Deprecated"
requestBody.SetStatus(&status)
customSecurityAttributeDefinitionId := "customSecurityAttributeDefinition-id"
graphClient.Directory().CustomSecurityAttributeDefinitionsById(&customSecurityAttributeDefinitionId).Patch(requestBody)


```