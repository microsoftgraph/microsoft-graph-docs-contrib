---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewTerm()
requestBody.SetLabels( []LocalizedLabel {
	msgraphsdk.NewLocalizedLabel(),
	SetAdditionalData(map[string]interface{}{
		"name": "changedLabel",
		"languageTag": "en-US",
		"isDefault": true,
	}
}
options := &msgraphsdk.TermRequestBuilderPatchOptions{
	Body: requestBody,
}
siteId := "site-id"
setId := "set-id"
termId := "term-id"
graphClient.SitesById(&siteId).TermStore().SetsById(&setId).TermsById(&termId).Patch(options)


```