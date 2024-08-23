---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new DeviceManagementPartner
{
	OdataType = "#microsoft.graph.deviceManagementPartner",
	LastHeartbeatDateTime = DateTimeOffset.Parse("2016-12-31T23:59:37.9174975-08:00"),
	PartnerState = DeviceManagementPartnerTenantState.Unavailable,
	PartnerAppType = DeviceManagementPartnerAppType.SingleTenantApp,
	SingleTenantAppId = "Single Tenant App Id value",
	DisplayName = "Display Name value",
	IsConfigured = true,
	WhenPartnerDevicesWillBeRemovedDateTime = DateTimeOffset.Parse("2016-12-31T23:56:38.2655023-08:00"),
	WhenPartnerDevicesWillBeMarkedAsNonCompliantDateTime = DateTimeOffset.Parse("2016-12-31T23:58:42.2131231-08:00"),
	GroupsRequiringPartnerEnrollment = new List<DeviceManagementPartnerAssignment>
	{
		new DeviceManagementPartnerAssignment
		{
			OdataType = "microsoft.graph.deviceManagementPartnerAssignment",
			Target = new ConfigurationManagerCollectionAssignmentTarget
			{
				OdataType = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				CollectionId = "Collection Id value",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.DeviceManagementPartners.PostAsync(requestBody);


```