---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new DetectionRule
{
	OdataType = "#microsoft.graph.security.detectionRule",
	Id = "office-encoded-powershell",
	DisplayName = "Suspicious encoded PowerShell from Office",
	Description = "Detects encoded PowerShell processes launched by Office applications, a common phishing payload pattern.",
	Status = DetectionRuleStatus.Enabled,
	QueryCondition = new QueryCondition
	{
		QueryText = "DeviceProcessEvents | where InitiatingProcessFileName in~ ('winword.exe','excel.exe','outlook.exe') | where FileName == 'powershell.exe' | where ProcessCommandLine has '-enc'",
	},
	Schedule = new RuleSchedule
	{
		Frequency = TimeSpan.Parse("PT1H"),
	},
	DetectionAction = new DetectionAction
	{
		AlertTemplate = new AlertTemplate
		{
			Title = "Suspicious encoded PowerShell from Office",
			Description = "An Office app launched an encoded PowerShell command, which may indicate phishing-driven code execution.",
			Severity = AlertSeverity.High,
			RecommendedActions = "Investigate the parent Office document, isolate the device, and review the user's recent email activity.",
			EntityMappings = new EntityMappingConfiguration
			{
				Accounts = new List<AccountEntityMapping>
				{
					new AccountEntityMapping
					{
						NameColumn = "AccountName",
						NtDomainColumn = "AccountDomain",
						SidColumn = "AccountSid",
					},
				},
				Hosts = new List<HostEntityMapping>
				{
					new HostEntityMapping
					{
						DeviceIdColumn = "DeviceId",
						NameColumn = "DeviceName",
					},
				},
				Files = new List<FileEntityMapping>
				{
					new FileEntityMapping
					{
						NameColumn = "FileName",
						Sha1Column = "SHA1",
						Sha256Column = "SHA256",
					},
				},
			},
			Tactics = new List<MitreTactic>
			{
				new MitreTactic
				{
					Tactic = "Execution",
					Techniques = new List<MitreTechnique>
					{
						new MitreTechnique
						{
							Technique = "T1059.001",
						},
					},
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Rules.DetectionRules.PostAsync(requestBody);


```