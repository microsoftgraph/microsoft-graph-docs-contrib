---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupSetting = await graphClient.Groups["{group-id}"].Settings["{groupSetting-id}"]
	.Request()
	.GetAsync();

```