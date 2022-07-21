---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPrintTaskDefinition()
displayName := "Test TaskDefinitionName"
requestBody.SetDisplayName(&displayName) 
createdBy := graphmodels.NewAppIdentity()
displayName := "Requesting App Display Name"
createdBy.SetDisplayName(&displayName) 
requestBody.SetCreatedBy(createdBy)

result, err := graphClient.Print().TaskDefinitions().Post(requestBody)


```