---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewUnifiedGroupSource()
group := msgraphsdk.NewGroup()
requestBody.SetGroup(group)
mail := "SecretGroup@contoso.com"
group.SetMail(&mail)
includedSources := "mailbox, site"
requestBody.SetIncludedSources(&includedSources)
options := &msgraphsdk.UnifiedGroupSourcesRequestBuilderPostOptions{
	Body: requestBody,
}
caseId := "case-id"
custodianId := "custodian-id"
result, err := graphClient.Compliance().Ediscovery().CasesById(&caseId).CustodiansById(&custodianId).UnifiedGroupSources().Post(options);


```