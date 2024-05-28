---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new TrainingCampaign
{
	DisplayName = "Graph Training Campaign",
	Description = "Graph Training Campaign Description",
	CreatedBy = new EmailIdentity
	{
		Email = "john@contoso.com",
	},
	LastModifiedBy = new EmailIdentity
	{
		Email = "john@contoso.com",
	},
	IncludedAccountTarget = new AccountTargetContent
	{
		Type = AccountTargetContentType.AddressBook,
		AdditionalData = new Dictionary<string, object>
		{
			{
				"accountTargetEmails" , new List<string>
				{
					"john@contoso.com",
				}
			},
		},
	},
	EndUserNotificationSetting = new EndUserNotificationSetting
	{
		NotificationPreference = EndUserNotificationPreference.Microsoft,
		SettingType = EndUserNotificationSettingType.TrainingSelected,
		AdditionalData = new Dictionary<string, object>
		{
			{
				"trainingReminder" , new 
				{
					DeliveryFrequency = "weekly",
					EndUserNotificationOdataBind = "https://graph.microsoft.com/beta/security/attackSimulation/endUserNotifications('fe521249-9901-4584-a987-026a9980c58e')",
					DefaultLanguage = "en",
				}
			},
			{
				"trainingAssignment" , new 
				{
					EndUserNotificationOdataBind = "https://graph.microsoft.com/beta/security/attackSimulation/endUserNotifications('36fb4dc1-7c37-4b96-9096-12e6d6014fae')",
					DefaultLanguage = "en",
				}
			},
		},
	},
	TrainingSetting = new TrainingSetting
	{
		SettingType = TrainingSettingType.MicrosoftCustom,
		AdditionalData = new Dictionary<string, object>
		{
			{
				"trainingAssignmentMappings" , new List<object>
				{
					new 
					{
						AssignedTo = new List<string>
						{
							"allUsers",
						},
						TrainingOdataBind = "https://graph.microsoft.com/beta/security/attackSimulation/trainings('40454905-dc26-4f36-b854-3042a5362cb3')",
					},
					new 
					{
						AssignedTo = new List<string>
						{
							"allUsers",
						},
						TrainingOdataBind = "https://graph.microsoft.com/beta/security/attackSimulation/trainings('ea70ae06-3859-4818-be9d-270ee81d80a4')",
					},
					new 
					{
						AssignedTo = new List<string>
						{
							"allUsers",
						},
						TrainingOdataBind = "https://graph.microsoft.com/beta/security/attackSimulation/trainings('d733d88c-1b5a-48e3-a588-9910e41ac21d')",
					},
				}
			},
		},
	},
	CampaignSchedule = new CampaignSchedule
	{
		LaunchDateTime = DateTimeOffset.Parse("2024-02-15T07:59:44Z"),
		CompletionDateTime = DateTimeOffset.Parse("2024-02-18T07:59:44Z"),
		Status = CampaignStatus.Cancelled,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.AttackSimulation.TrainingCampaigns["{trainingCampaign-id}"].PatchAsync(requestBody);


```