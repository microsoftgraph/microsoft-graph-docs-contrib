---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewUserSource()
email := "adelev@contoso.com"
requestBody.SetEmail(&email)
includedSources := "mailbox"
requestBody.SetIncludedSources(&includedSources)
options := &msgraphsdk.UserSourcesRequestBuilderPostOptions{
	Body: requestBody,
}
caseId := "case-id"
legalHoldId := "legalHold-id"
result, err := graphClient.Compliance().Ediscovery().CasesById(&caseId).LegalHoldsById(&legalHoldId).UserSources().Post(options)


```