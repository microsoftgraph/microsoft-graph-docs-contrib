---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/v1.0/directoryObjects/{id}"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.ServicePrincipalsById("servicePrincipal-id").Owners().$ref().Post(requestBody)


```