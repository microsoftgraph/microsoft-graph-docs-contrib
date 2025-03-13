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
			AdditionalClassGroupAttributes.CourseSubject,
			AdditionalClassGroupAttributes.CourseGradeLevel,
			AdditionalClassGroupAttributes.CourseExternalId,
			AdditionalClassGroupAttributes.AcademicSessionTitle,
			AdditionalClassGroupAttributes.AcademicSessionExternalId,
		},
		AdditionalOptions = new AdditionalClassGroupOptions
		{
			OdataType = "#microsoft.graph.industryData.additionalClassGroupOptions",
			CreateTeam = true,
			WriteDisplayNameOnCreateOnly = true,
		},
		EnrollmentMappings = new EnrollmentMappings
		{
			OdataType = "#microsoft.graph.industryData.enrollmentMappings",
			OwnerEnrollmentMappings = new List<SectionRoleReferenceValue>
			{
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "teacher",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "proctor",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "teacherAssistant",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "paraProfessional",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "physicalTherapist",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "speechTherapist",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "visionTherapist",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "occupationalTherapist",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "staff",
				},
			},
			MemberEnrollmentMappings = new List<SectionRoleReferenceValue>
			{
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "student",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "substitute",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "aide",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "proctor",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "teacherAssistant",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "paraProfessional",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "physicalTherapist",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "speechTherapist",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "visionTherapist",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "occupationalTherapist",
				},
				new SectionRoleReferenceValue
				{
					OdataType = "#microsoft.graph.industryData.sectionRoleReferenceValue",
					Code = "staff",
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.IndustryData.OutboundProvisioningFlowSets["{outboundProvisioningFlowSet-id}"].ProvisioningFlows.PostAsync(requestBody);


```