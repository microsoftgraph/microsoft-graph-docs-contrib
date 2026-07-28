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
				"customerImpact" , new CustomFieldStringValue
				{
					OdataType = "#microsoft.graph.security.caseManagement.customFieldStringValue",
					Value = "Executive mailbox affected",
				}
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.CaseManagement.Cases.PostAsync(requestBody);


```