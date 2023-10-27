---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

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