---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Teams.Item.InstalledApps.Item.Upgrade.UpgradePostRequestBody
{
	ConsentedPermissionSet = new TeamsAppPermissionSet
	{
		ResourceSpecificPermissions = new List<TeamsAppResourceSpecificPermission>
		{
			new TeamsAppResourceSpecificPermission
			{
				PermissionValue = "Channel.Create.Group",
				PermissionType = TeamsAppResourceSpecificPermissionType.Application,
			},
			new TeamsAppResourceSpecificPermission
			{
				PermissionValue = "ChannelMeeting.ReadBasic.Group",
				PermissionType = TeamsAppResourceSpecificPermissionType.Delegated,
			},
		},
	},
};
await graphClient.Teams["{team-id}"].InstalledApps["{teamsAppInstallation-id}"].Upgrade.PostAsync(requestBody);


```