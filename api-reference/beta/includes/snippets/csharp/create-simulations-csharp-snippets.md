---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Simulation
{
	DisplayName = "Graph Simulation",
	CreatedBy = new EmailIdentity
	{
		Email = "john@contoso.com",
	},
	DurationInDays = 3,
	AttackTechnique = SimulationAttackTechnique.CredentialHarvesting,
	Status = SimulationStatus.Scheduled,
	IncludedAccountTarget = new AddressBookAccountTargetContent
	{
		OdataType = "#microsoft.graph.addressBookAccountTargetContent",
		Type = AccountTargetContentType.AddressBook,
		AccountTargetEmails = new List<string>
		{
			"john@contoso.com",
		},
	},
	TrainingSetting = new TrainingSetting
	{
		SettingType = TrainingSettingType.NoTraining,
	},
	EndUserNotificationSetting = new EndUserNotificationSetting
	{
		NotificationPreference = EndUserNotificationPreference.Microsoft,
		SettingType = EndUserNotificationSettingType.NoTraining,
		PositiveReinforcement = new PositiveReinforcementNotification
		{
			DeliveryPreference = NotificationDeliveryPreference.DeliverAfterCampaignEnd,
			EndUserNotification = "https://graph.microsoft.com/beta/security/attacksimulation/endUserNotifications/1ewer3678-9abc-def0-123456789a",
			DefaultLanguage = "en",
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"simulationNotification" , new 
				{
					TargettedUserType = "compromised",
					EndUserNotificationOdataBind = "https://graph.microsoft.com/beta/security/attacksimulation/endUserNotifications/12wer3678-9abc-def0-123456789a",
					DefaultLanguage = "en",
				}
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"payload@odata.bind" , "https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a"
		},
		{
			"loginPage@odata.bind" , "https://graph.microsoft.com/beta/security/attacksimulation/loginPages/1w345678-9abc-def0-123456789a"
		},
		{
			"landingPage@odata.bind" , "https://graph.microsoft.com/beta/security/attacksimulation/landingPages/1c345678-9abc-def0-123456789a"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.AttackSimulation.Simulations.PostAsync(requestBody);


```