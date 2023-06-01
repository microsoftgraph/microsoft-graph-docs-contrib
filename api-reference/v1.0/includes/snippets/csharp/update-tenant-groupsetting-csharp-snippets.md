---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new GroupSetting
{
	Values = new List<SettingValue>
	{
		new SettingValue
		{
			Name = "AllowToAddGuests",
			Value = "false",
		},
	},
};
var result = await graphClient.GroupSettings["{groupSetting-id}"].PatchAsync(requestBody);


```