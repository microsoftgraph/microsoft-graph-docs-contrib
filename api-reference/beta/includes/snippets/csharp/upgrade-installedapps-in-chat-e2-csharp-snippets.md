---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Chats.Item.InstalledApps.Item.Upgrade.UpgradePostRequestBody
{
	ConsentedPermissionSet = new TeamsAppPermissionSet
	{
		ResourceSpecificPermissions = new List<TeamsAppResourceSpecificPermission>
		{
			new TeamsAppResourceSpecificPermission
			{
				PermissionValue = "OnlineMeeting.ReadBasic.Chat",
				PermissionType = TeamsAppResourceSpecificPermissionType.Delegated,
			},
			new TeamsAppResourceSpecificPermission
			{
				PermissionValue = "ChatMember.Read.Chat",
				PermissionType = TeamsAppResourceSpecificPermissionType.Application,
			},
		},
	},
};
await graphClient.Chats["{chat-id}"].InstalledApps["{teamsAppInstallation-id}"].Upgrade.PostAsync(requestBody);


```