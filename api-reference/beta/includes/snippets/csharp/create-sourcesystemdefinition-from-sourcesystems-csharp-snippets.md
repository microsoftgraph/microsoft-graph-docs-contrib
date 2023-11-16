---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.IndustryData;

var requestBody = new SourceSystemDefinition
{
	DisplayName = "Rostering source",
	UserMatchingSettings = new List<UserMatchingSetting>
	{
		new UserMatchingSetting
		{
			MatchTarget = new UserMatchTargetReferenceValue
			{
				Code = "userPrincipalName",
			},
			PriorityOrder = 0,
			SourceIdentifier = new IdentifierTypeReferenceValue
			{
				Code = "username",
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"roleGroup@odata.bind" , "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff"
				},
			},
		},
		new UserMatchingSetting
		{
			MatchTarget = new UserMatchTargetReferenceValue
			{
				Code = "userPrincipalName",
			},
			PriorityOrder = 1,
			SourceIdentifier = new IdentifierTypeReferenceValue
			{
				Code = "username",
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"roleGroup@odata.bind" , "https://graph.microsoft.com/beta/external/industryData/roleGroups('students')"
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.IndustryData.SourceSystems.PostAsync(requestBody);


```