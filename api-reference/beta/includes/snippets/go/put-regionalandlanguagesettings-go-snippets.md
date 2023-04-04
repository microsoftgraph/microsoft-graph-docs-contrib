---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Me/Settings/RegionalAndLanguageSettings"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewRegionalAndLanguageSettingsPutRequestBody()
additionalData := map[string]interface{}{
defaultDisplayLanguage := graphmodels.New()
locale := "en-US"
defaultDisplayLanguage.SetLocale(&locale) 
	requestBody.SetDefaultDisplayLanguage(defaultDisplayLanguage)


 := graphmodels.New()
locale := "fr-FR"
.SetLocale(&locale) 
 := graphmodels.New()
locale := "de-DE"
.SetLocale(&locale) 

	authoringLanguages := []graphmodels.Objectable {
		,
		,

	}
defaultTranslationLanguage := graphmodels.New()
locale := "en-US"
defaultTranslationLanguage.SetLocale(&locale) 
	requestBody.SetDefaultTranslationLanguage(defaultTranslationLanguage)
defaultSpeechInputLanguage := graphmodels.New()
locale := "en-US"
defaultSpeechInputLanguage.SetLocale(&locale) 
	requestBody.SetDefaultSpeechInputLanguage(defaultSpeechInputLanguage)
defaultRegionalFormat := graphmodels.New()
locale := "en-GB"
defaultRegionalFormat.SetLocale(&locale) 
	requestBody.SetDefaultRegionalFormat(defaultRegionalFormat)
regionalFormatOverrides := graphmodels.New()
calendar := "Gregorian Calendar"
regionalFormatOverrides.SetCalendar(&calendar) 
firstDayOfWeek := "Sunday"
regionalFormatOverrides.SetFirstDayOfWeek(&firstDayOfWeek) 
shortDateFormat := "yyyy-MM-dd"
regionalFormatOverrides.SetShortDateFormat(&shortDateFormat) 
longDateFormat := "dddd, MMMM d, yyyy"
regionalFormatOverrides.SetLongDateFormat(&longDateFormat) 
shortTimeFormat := "HH:mm"
regionalFormatOverrides.SetShortTimeFormat(&shortTimeFormat) 
longTimeFormat := "h:mm:ss tt"
regionalFormatOverrides.SetLongTimeFormat(&longTimeFormat) 
timeZone := "Pacific Standard Time"
regionalFormatOverrides.SetTimeZone(&timeZone) 
	requestBody.SetRegionalFormatOverrides(regionalFormatOverrides)
translationPreferences := graphmodels.New()
translationBehavior := "Yes"
translationPreferences.SetTranslationBehavior(&translationBehavior) 


 := graphmodels.New()
languageTag := "fr"
.SetLanguageTag(&languageTag) 
translationBehavior := "Yes"
.SetTranslationBehavior(&translationBehavior) 

	languageOverrides := []graphmodels.Objectable {
		,

	}
	translationPreferences.SetLanguageOverrides(languageOverrides)
	requestBody.SetTranslationPreferences(translationPreferences)
}
requestBody.SetAdditionalData(additionalData)

graphClient.Me().Settings().RegionalAndLanguageSettings().Put(context.Background(), requestBody, nil)


```