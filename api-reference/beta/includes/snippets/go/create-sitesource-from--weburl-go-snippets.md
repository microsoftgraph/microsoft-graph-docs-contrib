---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSiteSource()
site := graphmodels.NewSite()
webUrl := "https://m365x809305.sharepoint.com/sites/Retail"
site.SetWebUrl(&webUrl) 
requestBody.SetSite(site)

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").LegalHoldsById("ediscoveryHoldPolicy-id").SiteSources().Post(requestBody)


```