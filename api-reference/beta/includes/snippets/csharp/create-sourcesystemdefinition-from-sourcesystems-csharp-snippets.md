---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.IndustryData.SourceSystemDefinition
{
	DisplayName = "Rostering source",
	UserMatchingSettings = new List<Microsoft.Graph.Beta.Models.IndustryData.UserMatchingSetting>
	{
		new Microsoft.Graph.Beta.Models.IndustryData.UserMatchingSetting
		{
			MatchTarget = new Microsoft.Graph.Beta.Models.IndustryData.UserMatchTargetReferenceValue
			{
				Code = "userPrincipalName",
			},
			PriorityOrder = 0,
			SourceIdentifier = new Microsoft.Graph.Beta.Models.IndustryData.IdentifierTypeReferenceValue
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
		new Microsoft.Graph.Beta.Models.IndustryData.UserMatchingSetting
		{
			MatchTarget = new Microsoft.Graph.Beta.Models.IndustryData.UserMatchTargetReferenceValue
			{
				Code = "userPrincipalName",
			},
			PriorityOrder = 1,
			SourceIdentifier = new Microsoft.Graph.Beta.Models.IndustryData.IdentifierTypeReferenceValue
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
var result = await graphClient.External.IndustryData.SourceSystems.PostAsync(requestBody);


```