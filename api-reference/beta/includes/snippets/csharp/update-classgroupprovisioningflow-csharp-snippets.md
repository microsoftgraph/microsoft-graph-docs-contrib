---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.IndustryData;

var requestBody = new ClassGroupProvisioningFlow
{
	OdataType = "#microsoft.graph.industryData.classGroupProvisioningFlow",
	Configuration = new ClassGroupConfiguration
	{
		OdataType = "#microsoft.graph.industryData.classGroupConfiguration",
		AdditionalAttributes = new List<AdditionalClassGroupAttributes?>
		{
			AdditionalClassGroupAttributes.CourseTitle,
			AdditionalClassGroupAttributes.CourseCode,
		},
		AdditionalOptions = new AdditionalClassGroupOptions
		{
			OdataType = "#microsoft.graph.industryData.additionalClassGroupOptions",
			CreateTeam = false,
			WriteDisplayNameOnCreateOnly = false,
		},
		EnrollmentMappings = new EnrollmentMappings
		{
			OdataType = "#microsoft.graph.industryData.enrollmentMappings",
			MemberEnrollmentMappings = new List<SectionRoleReferenceValue>
			{
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "substitute",
				},
			},
			OwnerEnrollmentMappings = new List<SectionRoleReferenceValue>
			{
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "teacher",
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.IndustryData.OutboundProvisioningFlowSets["{outboundProvisioningFlowSet-id}"].ProvisioningFlows["{provisioningFlow-id}"].PatchAsync(requestBody);


```