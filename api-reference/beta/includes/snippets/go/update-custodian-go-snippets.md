---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCustodian()
applyHoldToSources := "false"
requestBody.SetApplyHoldToSources(&applyHoldToSources)
options := &msgraphsdk.CustodianRequestBuilderPatchOptions{
	Body: requestBody,
}
caseId := "case-id"
custodianId := "custodian-id"
graphClient.Compliance().Ediscovery().CasesById(&caseId).CustodiansById(&custodianId).Patch(options)


```