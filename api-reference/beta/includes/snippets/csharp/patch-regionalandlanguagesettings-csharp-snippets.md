---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new RegionalAndLanguageSettings
{
	AuthoringLanguages = new List<LocaleInfo>
	{
		new LocaleInfo
		{
			Locale = "en-US",
		},
		new LocaleInfo
		{
			Locale = "es-MX",
		},
	},
	DefaultRegionalFormat = new LocaleInfo
	{
		Locale = "en-US",
	},
};
var result = await graphClient.Me.Settings.RegionalAndLanguageSettings.PatchAsync(requestBody);


```