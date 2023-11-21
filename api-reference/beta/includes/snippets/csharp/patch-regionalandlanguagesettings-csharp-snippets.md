---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Settings.RegionalAndLanguageSettings.PatchAsync(requestBody);


```