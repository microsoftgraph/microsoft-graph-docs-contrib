---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new DetectionRule
{
	OdataType = "#microsoft.graph.security.detectionRule",
	Id = "office-encoded-powershell",
	DisplayName = "Suspicious encoded PowerShell from Office",
	QueryCondition = new QueryCondition
	{
		QueryText = "DeviceProcessEvents | where InitiatingProcessFileName in~ ('winword.exe','excel.exe','outlook.exe') | where FileName == 'powershell.exe' | where ProcessCommandLine has '-enc'",
	},
	Schedule = new RuleSchedule
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"frequency" , "PT1H"
			},
		},
	},
	DetectionAction = new DetectionAction
	{
		AlertTemplate = new AlertTemplate
		{
			Title = "Suspicious encoded PowerShell from Office",
			Description = "An Office app launched an encoded PowerShell command, which may indicate phishing-driven code execution.",
			Severity = AlertSeverity.High,
			RecommendedActions = "Investigate the parent Office document, isolate the device, and review the user's recent email activity.",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"entityMappings" , new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"accounts", new UntypedArray(new List<UntypedNode>
							{
								new UntypedObject(new Dictionary<string, UntypedNode>
								{
									{
										"nameColumn", new UntypedString("AccountName")
									},
									{
										"ntDomainColumn", new UntypedString("AccountDomain")
									},
									{
										"sidColumn", new UntypedString("AccountSid")
									},
								}),
							})
						},
						{
							"hosts", new UntypedArray(new List<UntypedNode>
							{
								new UntypedObject(new Dictionary<string, UntypedNode>
								{
									{
										"deviceIdColumn", new UntypedString("DeviceId")
									},
									{
										"nameColumn", new UntypedString("DeviceName")
									},
								}),
							})
						},
						{
							"files", new UntypedArray(new List<UntypedNode>
							{
								new UntypedObject(new Dictionary<string, UntypedNode>
								{
									{
										"nameColumn", new UntypedString("FileName")
									},
									{
										"sha1Column", new UntypedString("SHA1")
									},
									{
										"sha256Column", new UntypedString("SHA256")
									},
								}),
							})
						},
					})
				},
				{
					"tactics" , new List<object>
					{
						new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"tactic", new UntypedString("Execution")
							},
							{
								"techniques", new UntypedArray(new List<UntypedNode>
								{
									new UntypedObject(new Dictionary<string, UntypedNode>
									{
										{
											"technique", new UntypedString("T1059.001")
										},
									}),
								})
							},
						}),
					}
				},
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"description" , "Detects encoded PowerShell processes launched by Office applications, a common phishing payload pattern."
		},
		{
			"status" , "enabled"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Rules.DetectionRules.PostAsync(requestBody);


```