---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupSetting = new GroupSetting
{
	TemplateId = "62375ab9-6b52-47ed-826b-58e47e0e304b",
	Values = new List<SettingValue>()
	{
		new SettingValue
		{
			Name = "GuestUsageGuidelinesUrl",
			Value = "https://privacy.contoso.com/privacystatement"
		},
		new SettingValue
		{
			Name = "EnableMSStandardBlockedWords",
			Value = "true"
		},
		new SettingValue
		{
			Name = "EnableMIPLabels",
			Value = "true"
		},
		new SettingValue
		{
			Name = "PrefixSuffixNamingRequirement",
			Value = "[Contoso-][GroupName]"
		}
	}
};

await graphClient.GroupSettings
	.Request()
	.AddAsync(groupSetting);

```