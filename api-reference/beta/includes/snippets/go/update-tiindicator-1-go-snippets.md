---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTiIndicator()
description := "description-updated"
requestBody.SetDescription(&description) 

graphClient.Security().TiIndicatorsById("tiIndicator-id").Patch(requestBody)


```