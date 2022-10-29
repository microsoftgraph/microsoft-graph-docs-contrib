---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directorySetting = new DirectorySetting
{
	Values = new List<SettingValue>()
	{
		new SettingValue
		{
			Name = "CustomBlockedWordsList",
			Value = "Contoso"
		}
	}
};

await graphClient.Settings["{directorySetting-id}"]
	.Request()
	.UpdateAsync(directorySetting);

```