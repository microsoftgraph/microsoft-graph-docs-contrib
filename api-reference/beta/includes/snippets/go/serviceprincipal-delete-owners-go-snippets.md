---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.New$refDeleteRequestBody()
additionalData := map[string]interface{}{
	"@odata.id" : "https://graph.microsoft.com/v1.0/directoryObjects/{id}", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.ServicePrincipalsById("servicePrincipal-id").OwnersById("directoryObject-id").$ref().Delete(context.Background(), requestBody, nil)


```