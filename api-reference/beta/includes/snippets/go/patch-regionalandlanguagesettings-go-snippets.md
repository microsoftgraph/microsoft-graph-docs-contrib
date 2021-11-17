---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewRegionalAndLanguageSettings()
requestBody.SetAuthoringLanguages( []LocaleInfo {
	msgraphsdk.NewLocaleInfo(),
	SetAdditionalData(map[string]interface{}{
		"locale": "en-US",
	}
	msgraphsdk.NewLocaleInfo(),
	SetAdditionalData(map[string]interface{}{
		"locale": "es-MX",
	}
}
defaultRegionalFormat := msgraphsdk.NewLocaleInfo()
requestBody.SetDefaultRegionalFormat(defaultRegionalFormat)
locale := "en-US"
defaultRegionalFormat.SetLocale(&locale)
options := &msgraphsdk.RegionalAndLanguageSettingsRequestBuilderPatchOptions{
	Body: requestBody,
}
graphClient.Me().Settings().RegionalAndLanguageSettings().Patch(options)


```