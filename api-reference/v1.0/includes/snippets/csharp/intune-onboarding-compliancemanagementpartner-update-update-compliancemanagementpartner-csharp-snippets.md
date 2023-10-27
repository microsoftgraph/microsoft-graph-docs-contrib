---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ComplianceManagementPartner
{
	OdataType = "#microsoft.graph.complianceManagementPartner",
	LastHeartbeatDateTime = DateTimeOffset.Parse("2016-12-31T23:59:37.9174975-08:00"),
	PartnerState = DeviceManagementPartnerTenantState.Unavailable,
	DisplayName = "Display Name value",
	MacOsOnboarded = true,
	AndroidOnboarded = true,
	IosOnboarded = true,
	MacOsEnrollmentAssignments = new List<ComplianceManagementPartnerAssignment>
	{
		new ComplianceManagementPartnerAssignment
		{
			OdataType = "microsoft.graph.complianceManagementPartnerAssignment",
			Target = new ConfigurationManagerCollectionAssignmentTarget
			{
				OdataType = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				CollectionId = "Collection Id value",
			},
		},
	},
	AndroidEnrollmentAssignments = new List<ComplianceManagementPartnerAssignment>
	{
		new ComplianceManagementPartnerAssignment
		{
			OdataType = "microsoft.graph.complianceManagementPartnerAssignment",
			Target = new ConfigurationManagerCollectionAssignmentTarget
			{
				OdataType = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				CollectionId = "Collection Id value",
			},
		},
	},
	IosEnrollmentAssignments = new List<ComplianceManagementPartnerAssignment>
	{
		new ComplianceManagementPartnerAssignment
		{
			OdataType = "microsoft.graph.complianceManagementPartnerAssignment",
			Target = new ConfigurationManagerCollectionAssignmentTarget
			{
				OdataType = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				CollectionId = "Collection Id value",
			},
		},
	},
};
var result = await graphClient.DeviceManagement.ComplianceManagementPartners["{complianceManagementPartner-id}"].PatchAsync(requestBody);


```