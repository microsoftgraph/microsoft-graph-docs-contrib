---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DirectorySetting
{
	Values = new List<SettingValue>
	{
		new SettingValue
		{
			Name = "CustomBlockedWordsList",
			Value = "Contoso",
		},
	},
};
var result = await graphClient.Settings["{directorySetting-id}"].PatchAsync(requestBody);


```