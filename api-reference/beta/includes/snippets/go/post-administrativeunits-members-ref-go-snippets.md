---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/beta/groups/{id}"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.AdministrativeUnitsById("administrativeUnit-id").Members().$ref().Post(requestBody)


```