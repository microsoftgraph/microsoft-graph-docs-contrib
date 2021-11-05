---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewLegalHold()
description := "String"
requestBody.SetDescription(&description)
createdBy := msgraphsdk.NewIdentitySet()
requestBody.SetCreatedBy(createdBy)
createdBy.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.identitySet",
}
isEnabled := "Boolean"
requestBody.SetIsEnabled(&isEnabled)
status := "String"
requestBody.SetStatus(&status)
contentQuery := "String"
requestBody.SetContentQuery(&contentQuery)
requestBody.SetErrors( []String {
	"String",
}
displayName := "String"
requestBody.SetDisplayName(&displayName)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.ediscovery.legalHold",
}
options := &msgraphsdk.LegalHoldsRequestBuilderPostOptions{
	Body: requestBody,
}
caseId := "case-id"
result, err := graphClient.Compliance().Ediscovery().CasesById(&caseId).LegalHolds().Post(options);


```