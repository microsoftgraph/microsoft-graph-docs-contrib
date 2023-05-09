---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TeamsAppInstallation
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
				PermissionValue = "OnlineMeetingIncomingAudio.Detect.Chat",
				PermissionType = TeamsAppResourceSpecificPermissionType.Delegated,
			},
			new TeamsAppResourceSpecificPermission
			{
				PermissionValue = "ChatMember.Read.Chat",
				PermissionType = TeamsAppResourceSpecificPermissionType.Application,
			},
			new TeamsAppResourceSpecificPermission
			{
				PermissionValue = "ChatMessage.Read.Chat",
				PermissionType = TeamsAppResourceSpecificPermissionType.Application,
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"teamsApp@odata.bind" , "https://graph.microsoft.com/beta/appCatalogs/teamsApps/2b524e28-95ce-4c9b-9773-4a5bd6ec1770"
		},
	},
};
var result = await graphClient.Chats["{chat-id}"].InstalledApps.PostAsync(requestBody);


```