---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewNoncustodialSource()
additionalData := map[string]interface{}{
	"@odata.id" : "https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/noncustodialDataSources/39333641443238353535383731453339", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").SearchesById("ediscoverySearch-id").NoncustodialSourcesById("ediscoveryNoncustodialDataSource-id").Post(requestBody)


```