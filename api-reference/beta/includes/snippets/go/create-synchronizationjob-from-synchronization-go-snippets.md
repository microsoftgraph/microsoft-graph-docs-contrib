---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSynchronizationJob()
templateId := "BoxOutDelta"
requestBody.SetTemplateId(&templateId) 

result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").Synchronization().Jobs().Post(context.Background(), requestBody, nil)


```