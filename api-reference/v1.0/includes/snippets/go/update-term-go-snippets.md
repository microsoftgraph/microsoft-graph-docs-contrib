---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewTerm()
requestBody.SetLabels( []LocalizedLabel {
	msgraphsdk.NewLocalizedLabel(),
name := "changedLabel"
	SetName(&name)
languageTag := "en-US"
	SetLanguageTag(&languageTag)
isDefault := true
	SetIsDefault(&isDefault)
}
siteId := "site-id"
setId := "set-id"
termId := "term-id"
graphClient.SitesById(&siteId).TermStore().SetsById(&setId).TermsById(&termId).Patch(requestBody)


```