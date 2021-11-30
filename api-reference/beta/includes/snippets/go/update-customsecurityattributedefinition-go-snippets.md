---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

customSecurityAttributeDefinitionId := "customSecurityAttributeDefinition-id"
graphClient.Directory().CustomSecurityAttributeDefinitionsById(&customSecurityAttributeDefinitionId).Patch(options)


```