---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewRegionalAndLanguageSettings()
requestBody.SetAuthoringLanguages( []LocaleInfo {
	msgraphsdk.NewLocaleInfo(),
locale := "en-US"
	SetLocale(&locale)
	msgraphsdk.NewLocaleInfo(),
locale := "es-MX"
	SetLocale(&locale)
}
defaultRegionalFormat := msgraphsdk.NewLocaleInfo()
requestBody.SetDefaultRegionalFormat(defaultRegionalFormat)
locale := "en-US"
defaultRegionalFormat.SetLocale(&locale)
graphClient.Me().Settings().RegionalAndLanguageSettings().Patch(requestBody)


```