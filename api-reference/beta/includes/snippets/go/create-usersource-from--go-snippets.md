---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUserSource()
email := "admin@M365x809305.onmicrosoft.com"
requestBody.SetEmail(&email) 
includedSources := graphmodels.MAILBOX, SITE_SOURCETYPE 
requestBody.SetIncludedSources(&includedSources) 

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").LegalHoldsById("ediscoveryHoldPolicy-id").UserSources().Post(requestBody)


```