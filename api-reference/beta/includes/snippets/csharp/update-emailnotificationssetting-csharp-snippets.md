---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new EmailNotificationsSetting
{
	IsEnabled = true,
	AdditionalEvents = NotificationEventsType.RestoreAndPolicyUpdates,
	Recipients = new NotificationRecipients
	{
		Role = NotificationRecipientsType.Custom,
		CustomRecipients = new List<EmailIdentity>
		{
			new EmailIdentity
			{
				Email = "amala@contoso.com",
			},
			new EmailIdentity
			{
				Email = "conrad@contoso.com",
			},
			new EmailIdentity
			{
				Email = "lothar@contoso.com",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.EmailNotificationsSetting.PatchAsync(requestBody);


```