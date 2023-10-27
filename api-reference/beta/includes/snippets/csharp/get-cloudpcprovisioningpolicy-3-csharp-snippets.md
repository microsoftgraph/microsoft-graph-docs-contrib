---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies["{cloudPcProvisioningPolicy-id}"].GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "id","description","displayName","displayName","domainJoinConfiguration","imageDisplayName","imageId","imageType","onPremisesConnectionId","windowsSettings","managedBy","cloudPcGroupDisplayName","gracePeriodInHours","localAdminEnabled","alternateResourceUrl" };
});


```