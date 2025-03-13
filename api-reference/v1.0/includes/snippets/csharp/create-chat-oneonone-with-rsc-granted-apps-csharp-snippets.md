---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Chat
{
	ChatType = ChatType.OneOnOne,
	Members = new List<ConversationMember>
	{
		new AadUserConversationMember
		{
			OdataType = "#microsoft.graph.aadUserConversationMember",
			Roles = new List<string>
			{
				"owner",
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('4b822dfc-2864-44e6-aa1e-7e0e8552168f')"
				},
			},
		},
		new AadUserConversationMember
		{
			OdataType = "#microsoft.graph.aadUserConversationMember",
			Roles = new List<string>
			{
				"owner",
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('6d1e1501-7a3d-45b7-b71b-68d372e5ce14')"
				},
			},
		},
	},
	InstalledApps = new List<TeamsAppInstallation>
	{
		new TeamsAppInstallation
		{
			ConsentedPermissionSet = new TeamsAppPermissionSet
			{
				ResourceSpecificPermissions = new List<TeamsAppResourceSpecificPermission>
				{
					new TeamsAppResourceSpecificPermission
					{
						PermissionValue = "ChatMessage.Read.Chat",
						PermissionType = TeamsAppResourceSpecificPermissionType.Application,
					},
					new TeamsAppResourceSpecificPermission
					{
						PermissionValue = "OnlineMeeting.ReadBasic.Chat",
						PermissionType = TeamsAppResourceSpecificPermissionType.Application,
					},
				},
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"teamsApp@odata.bind" , "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/8e55a7b1-6766-4f0a-8610-ecacfe3d569a"
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Chats.PostAsync(requestBody);


```