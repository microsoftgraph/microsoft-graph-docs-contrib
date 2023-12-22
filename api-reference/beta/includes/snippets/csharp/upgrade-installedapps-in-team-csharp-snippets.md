---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Teams.Item.InstalledApps.Item.Upgrade;
using Microsoft.Graph.Beta.Models;

var requestBody = new UpgradePostRequestBody
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Teams["{team-id}"].InstalledApps["{teamsAppInstallation-id}"].Upgrade.PostAsync(requestBody);


```