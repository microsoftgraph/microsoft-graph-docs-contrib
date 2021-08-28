---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupSetting = new GroupSetting
{
	Values = new List<SettingValue>()
	{
		new SettingValue
		{
			Name = "AllowToAddGuests",
			Value = "true"
		}
	}
};

await graphClient.Groups["{group-id}"].Settings["{groupSetting-id}"]
	.Request()
	.UpdateAsync(groupSetting);

```