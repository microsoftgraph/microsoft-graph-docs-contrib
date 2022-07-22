---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewRegionalAndLanguageSettings()


localeInfo := graphmodels.NewLocaleInfo()
locale := "en-US"
localeInfo.SetLocale(&locale) 
localeInfo1 := graphmodels.NewLocaleInfo()
locale := "es-MX"
localeInfo1.SetLocale(&locale) 

authoringLanguages := []graphmodels.LocaleInfoable {
	localeInfo,
	localeInfo1,

}
requestBody.SetAuthoringLanguages(authoringLanguages)
defaultRegionalFormat := graphmodels.NewLocaleInfo()
locale := "en-US"
defaultRegionalFormat.SetLocale(&locale) 
requestBody.SetDefaultRegionalFormat(defaultRegionalFormat)

graphClient.Me().Settings().RegionalAndLanguageSettings().Patch(requestBody)


```