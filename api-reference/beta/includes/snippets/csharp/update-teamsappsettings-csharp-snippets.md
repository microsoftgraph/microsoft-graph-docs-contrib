---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsAppSettings = new TeamsAppSettings
{
	IsChatResourceSpecificConsentEnabled = true
};

await graphClient.Teamwork.TeamsAppSettings
	.Request()
	.UpdateAsync(teamsAppSettings);

```