---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new EmailNotificationsSetting
{
	IsEnabled = true,
	AdditionalEvents = NotificationEventsType.RestoreAndPolicyUpdates,
	Recipients = new NotificationRecipients
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"recipients" , new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"role", new UntypedString("custom")
					},
					{
						"customRecipients", new UntypedArray(new List<UntypedNode>
						{
							new UntypedObject(new Dictionary<string, UntypedNode>
							{
								{
									"email", new UntypedString("amala@contoso.com")
								},
							}),
							new UntypedObject(new Dictionary<string, UntypedNode>
							{
								{
									"email", new UntypedString("conrad@contoso.com")
								},
							}),
							new UntypedObject(new Dictionary<string, UntypedNode>
							{
								{
									"email", new UntypedString("lothar@contoso.com")
								},
							}),
						})
					},
				})
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.EmailNotificationsSetting.PatchAsync(requestBody);


```