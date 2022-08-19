---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSiteSource()
site := graphmodels.NewSite()
webUrl := "https://contoso.sharepoint.com/sites/HumanResources"
site.SetWebUrl(&webUrl) 
requestBody.SetSite(site)

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").CustodiansById("custodian-id").SiteSources().Post(requestBody)


```