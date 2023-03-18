---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewTerm()


localizedLabel := graphmodels.NewLocalizedLabel()
name := "changedLabel"
localizedLabel.SetName(&name) 
languageTag := "en-US"
localizedLabel.SetLanguageTag(&languageTag) 
isDefault := true
localizedLabel.SetIsDefault(&isDefault) 

labels := []graphmodels.LocalizedLabelable {
	localizedLabel,

}
requestBody.SetLabels(labels)

result, err := graphClient.SitesById("site-id").TermStore().SetsById("set-id").TermsById("term-id").Patch(context.Background(), requestBody, nil)


```