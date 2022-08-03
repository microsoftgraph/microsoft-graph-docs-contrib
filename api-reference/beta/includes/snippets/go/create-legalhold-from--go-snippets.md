---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewLegalHold()
"@odata.type" := "#microsoft.graph.ediscovery.legalHold"
requestBody.Set"@odata.type"(&"@odata.type") 
description := "String"
requestBody.SetDescription(&description) 
createdBy := graphmodels.NewIdentitySet()
"@odata.type" := "microsoft.graph.identitySet"
createdBy.Set"@odata.type"(&"@odata.type") 
requestBody.SetCreatedBy(createdBy)
isEnabled := "Boolean"
requestBody.SetIsEnabled(&isEnabled) 
status := graphmodels.STRING_LEGALHOLDSTATUS 
requestBody.SetStatus(&status) 
contentQuery := "String"
requestBody.SetContentQuery(&contentQuery) 
errors := []string {
	"String",

}
requestBody.SetErrors(errors)
displayName := "String"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").LegalHolds().Post(requestBody)


```