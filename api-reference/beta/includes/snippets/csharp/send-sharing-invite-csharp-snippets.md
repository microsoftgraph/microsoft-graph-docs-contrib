---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Drives.Item.Items.Item.Invite;
using Microsoft.Graph.Beta.Models;

var requestBody = new InvitePostRequestBody
{
	Recipients = new List<DriveRecipient>
	{
		new DriveRecipient
		{
			Email = "robin@contoso.org",
		},
	},
	Message = "Here's the file that we're collaborating on.",
	RequireSignIn = true,
	SendInvitation = true,
	Roles = new List<string>
	{
		"write",
	},
	Password = "password123",
	ExpirationDateTime = "2018-07-15T14:00:00.000Z",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Invite.PostAsInvitePostResponseAsync(requestBody);


```