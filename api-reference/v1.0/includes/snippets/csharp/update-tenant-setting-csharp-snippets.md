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
			Value = "false"
		}
	}
};

await graphClient.GroupSettings["{groupSetting-id}"]
	.Request()
	.UpdateAsync(groupSetting);

```