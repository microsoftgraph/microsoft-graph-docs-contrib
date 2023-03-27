---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewUnifiedGroupSource()
group := graphmodels.NewGroup()
mail := "SecretGroup@contoso.com"
group.SetMail(&mail) 
requestBody.SetGroup(group)
includedSources := graphmodels.MAILBOX, SITE_SOURCETYPE 
requestBody.SetIncludedSources(&includedSources) 

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").CustodiansById("custodian-id").UnifiedGroupSources().Post(context.Background(), requestBody, nil)


```