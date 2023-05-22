---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DirectorySetting
{
	TemplateId = "62375ab9-6b52-47ed-826b-58e47e0e304b",
	Values = new List<SettingValue>
	{
		new SettingValue
		{
			Name = "GuestUsageGuidelinesUrl",
			Value = "https://privacy.contoso.com/privacystatement",
		},
		new SettingValue
		{
			Name = "EnableMSStandardBlockedWords",
			Value = "true",
		},
		new SettingValue
		{
			Name = "EnableMIPLabels",
			Value = "true",
		},
		new SettingValue
		{
			Name = "PrefixSuffixNamingRequirement",
			Value = "[Contoso-][GroupName]",
		},
	},
};
var result = await graphClient.Settings.PostAsync(requestBody);


```