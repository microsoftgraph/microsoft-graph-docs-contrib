---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security.CaseManagement;

var requestBody = new GenericCase
{
	OdataType = "#microsoft.graph.security.caseManagement.genericCase",
	DisplayName = "Security Breach Investigation",
	Status = "active",
	Description = "Investigating potential credential compromise.",
	AssignedTo = "john.doe@contoso.com",
	Priority = "high",
	CustomFields = new CustomFieldValues
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"Customer impact" , new CustomFieldStringValue
				{
					OdataType = "#microsoft.graph.security.caseManagement.customFieldStringValue",
					Value = "Executive mailbox affected",
				}
			},
			{
				"Affected users" , new CustomFieldNumberValue
				{
					OdataType = "#microsoft.graph.security.caseManagement.customFieldNumberValue",
					Value = 12,
				}
			},
			{
				"Review date" , new CustomFieldDateTimeValue
				{
					OdataType = "#microsoft.graph.security.caseManagement.customFieldDateTimeValue",
					ValueDateTime = DateTimeOffset.Parse("2026-06-15T09:00:00Z"),
				}
			},
			{
				"Affected services" , new CustomFieldOptionsValue
				{
					OdataType = "#microsoft.graph.security.caseManagement.customFieldOptionsValue",
					Values = new List<string>
					{
						"Exchange Online",
						"Microsoft Teams",
					},
				}
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.CaseManagement.Cases.PostAsync(requestBody);


```