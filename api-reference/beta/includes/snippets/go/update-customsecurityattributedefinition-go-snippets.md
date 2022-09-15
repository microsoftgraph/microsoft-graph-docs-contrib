---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCustomSecurityAttributeDefinition()
description := "Target completion date (YYYY/MM/DD)"
requestBody.SetDescription(&description) 

graphClient.Directory().CustomSecurityAttributeDefinitionsById("customSecurityAttributeDefinition-id").Patch(context.Background(), requestBody, nil)


```