---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEdiscoveryCase()
displayName := "CONTOSO LITIGATION-005"
requestBody.SetDisplayName(&displayName) 
description := "Project Bazooka"
requestBody.SetDescription(&description) 
externalId := "324516"
requestBody.SetExternalId(&externalId) 

result, err := graphClient.Security().Cases().EdiscoveryCases().Post(requestBody)


```