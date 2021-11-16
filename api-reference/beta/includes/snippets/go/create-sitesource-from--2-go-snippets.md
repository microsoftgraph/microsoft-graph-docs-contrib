---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewSiteSource()
site := msgraphsdk.NewSite()
requestBody.SetSite(site)
webUrl := "https://contoso.sharepoint.com/sites/SecretSite"
site.SetWebUrl(&webUrl)
options := &msgraphsdk.SiteSourcesRequestBuilderPostOptions{
	Body: requestBody,
}
caseId := "case-id"
legalHoldId := "legalHold-id"
result, err := graphClient.Compliance().Ediscovery().CasesById(&caseId).LegalHoldsById(&legalHoldId).SiteSources().Post(options)


```