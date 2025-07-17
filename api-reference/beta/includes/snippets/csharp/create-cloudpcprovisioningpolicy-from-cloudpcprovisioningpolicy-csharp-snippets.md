---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new CloudPcProvisioningPolicy
{
	OdataType = "#microsoft.graph.cloudPcProvisioningPolicy",
	Description = "Description value",
	DisplayName = "Display Name value",
	DomainJoinConfigurations = new List<CloudPcDomainJoinConfiguration>
	{
		new CloudPcDomainJoinConfiguration
		{
			OnPremisesConnectionId = "16ee6c71-fc10-438b-88ac-daa1ccafffff",
			Type = CloudPcDomainJoinType.HybridAzureADJoin,
		},
		new CloudPcDomainJoinConfiguration
		{
			OnPremisesConnectionId = "26e16c71-f210-438b-88ac-d481ccafffff",
			Type = CloudPcDomainJoinType.HybridAzureADJoin,
		},
	},
	Id = "1d164206-bf41-4fd2-8424-a3192d39ffff",
	EnableSingleSignOn = true,
	ImageDisplayName = "Windows-10 19h1-evd",
	ImageId = "MicrosoftWindowsDesktop_Windows-10_19h1-evd",
	ImageType = CloudPcProvisioningPolicyImageType.Gallery,
	WindowsSettings = new CloudPcWindowsSettings
	{
		Language = "en-US",
	},
	WindowsSetting = new CloudPcWindowsSetting
	{
		Locale = "en-US",
	},
	ProvisioningType = CloudPcProvisioningType.Dedicated,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"domainJoinConfiguration" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"domainJoinType", new UntypedString("hybridAzureADJoin")
				},
				{
					"onPremisesConnectionId", new UntypedString("16ee6c71-fc10-438b-88ac-daa1ccafffff")
				},
			})
		},
		{
			"onPremisesConnectionId" , "4e47d0f6-6f77-44f0-8893-c0fe1701ffff"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies.PostAsync(requestBody);


```