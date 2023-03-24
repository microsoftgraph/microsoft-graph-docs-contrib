---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewTiIndicator()
description := "description-updated"
requestBody.SetDescription(&description) 

result, err := graphClient.Security().TiIndicatorsById("tiIndicator-id").Patch(context.Background(), requestBody, nil)


```