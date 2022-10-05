---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSiteSource()
site := graphmodels.NewSite()
webUrl := "https://contoso.sharepoint.com/sites/SecretSite"
site.SetWebUrl(&webUrl) 
requestBody.SetSite(site)

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").LegalHoldsById("legalHold-id").SiteSources().Post(context.Background(), requestBody, nil)


```