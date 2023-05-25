---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.Invite.InvitePostRequestBody
{
	Recipients = new List<DriveRecipient>
	{
		new DriveRecipient
		{
			Email = "ryan@contoso.com",
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
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Invite.PostAsync(requestBody);


```