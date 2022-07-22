---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTag()
displayName := "Privileged"
requestBody.SetDisplayName(&displayName) 
description := "The document is privileged"
requestBody.SetDescription(&description) 
additionalData := map[string]interface{}{
	"parent@odata.bind" : "https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/tags/98fdad78bbce4519b75474bc150575c3", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").Tags().Post(requestBody)


```