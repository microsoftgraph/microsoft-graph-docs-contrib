---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.IndustryData;

var requestBody = new UserProvisioningFlow
{
	OdataType = "#microsoft.graph.industryData.userProvisioningFlow",
	CreateUnmatchedUsers = true,
	ManagementOptions = new UserManagementOptions
	{
		AdditionalAttributes = new List<AdditionalUserAttributes?>
		{
			AdditionalUserAttributes.UserGradeLevel,
		},
		AdditionalOptions = new AdditionalUserOptions
		{
			MarkAllStudentsAsMinors = true,
			AllowStudentContactAssociation = false,
		},
	},
	CreationOptions = new UserCreationOptions
	{
		Configurations = new List<UserConfiguration>
		{
			new UserConfiguration
			{
				DefaultPasswordSettings = new SimplePasswordSettings
				{
					OdataType = "#microsoft.graph.industryData.simplePasswordSettings",
					Password = "********",
				},
				LicenseSkus = new List<string>
				{
					"Sku1",
				},
				AdditionalData = new Dictionary<string, object>
				{
					{
						"roleGroup@odata.bind" , "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff"
					},
				},
			},
			new UserConfiguration
			{
				DefaultPasswordSettings = new SimplePasswordSettings
				{
					OdataType = "#microsoft.graph.industryData.simplePasswordSettings",
					Password = "********",
				},
				LicenseSkus = new List<string>
				{
					"Sku2",
				},
				AdditionalData = new Dictionary<string, object>
				{
					{
						"roleGroup@odata.bind" , "https://graph.microsoft.com/beta/external/industryData/roleGroups/students"
					},
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.IndustryData.OutboundProvisioningFlowSets["{outboundProvisioningFlowSet-id}"].ProvisioningFlows.PostAsync(requestBody);


```