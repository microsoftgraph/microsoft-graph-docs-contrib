---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewLegalHold()
description := "This is a description for a legalHold"
requestBody.SetDescription(&description)
options := &msgraphsdk.LegalHoldRequestBuilderPatchOptions{
	Body: requestBody,
}
caseId := "case-id"
legalHoldId := "legalHold-id"
graphClient.Compliance().Ediscovery().CasesById(&caseId).LegalHoldsById(&legalHoldId).Patch(options)


```