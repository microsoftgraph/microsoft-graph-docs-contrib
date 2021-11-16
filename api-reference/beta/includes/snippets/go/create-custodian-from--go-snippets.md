---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewCustodian()
email := "AdeleV@contoso.com"
requestBody.SetEmail(&email)
applyHoldToSources := "true"
requestBody.SetApplyHoldToSources(&applyHoldToSources)
options := &msgraphsdk.CustodiansRequestBuilderPostOptions{
	Body: requestBody,
}
caseId := "case-id"
result, err := graphClient.Compliance().Ediscovery().CasesById(&caseId).Custodians().Post(options)


```