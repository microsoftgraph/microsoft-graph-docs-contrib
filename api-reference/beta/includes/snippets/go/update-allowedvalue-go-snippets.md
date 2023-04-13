---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAllowedValue()
isActive := false
requestBody.SetIsActive(&isActive) 

result, err := graphClient.Directory().CustomSecurityAttributeDefinitionsById("customSecurityAttributeDefinition-id").AllowedValuesById("allowedValue-id").Patch(context.Background(), requestBody, nil)


```