---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Settings.RegionalAndLanguageSettings.RegionalAndLanguageSettingsPutRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"defaultDisplayLanguage" , new 
			{
				Locale = "en-US",
			}
		},
		{
			"authoringLanguages" , new List<>
			{
				new 
				{
					Locale = "fr-FR",
				},
				new 
				{
					Locale = "de-DE",
				},
			}
		},
		{
			"defaultTranslationLanguage" , new 
			{
				Locale = "en-US",
			}
		},
		{
			"defaultSpeechInputLanguage" , new 
			{
				Locale = "en-US",
			}
		},
		{
			"defaultRegionalFormat" , new 
			{
				Locale = "en-GB",
			}
		},
		{
			"regionalFormatOverrides" , new 
			{
				Calendar = "Gregorian Calendar",
				FirstDayOfWeek = "Sunday",
				ShortDateFormat = "yyyy-MM-dd",
				LongDateFormat = "dddd, MMMM d, yyyy",
				ShortTimeFormat = "HH:mm",
				LongTimeFormat = "h:mm:ss tt",
				TimeZone = "Pacific Standard Time",
			}
		},
		{
			"translationPreferences" , new 
			{
				TranslationBehavior = "Yes",
				LanguageOverrides = new List<>
				{
					new 
					{
						LanguageTag = "fr",
						TranslationBehavior = "Yes",
					},
				},
			}
		},
	},
};
await graphClient.Me.Settings.RegionalAndLanguageSettings.PutAsync(requestBody);


```