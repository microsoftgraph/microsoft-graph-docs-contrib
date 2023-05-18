---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Policies.DeviceRegistrationPolicy.DeviceRegistrationPolicyPutRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"id" , "deviceRegistrationPolicy"
		},
		{
			"displayName" , "Device Registration Policy"
		},
		{
			"description" , "Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks"
		},
		{
			"userDeviceQuota" , 50
		},
		{
			"multiFactorAuthConfiguration" , "0"
		},
		{
			"azureADRegistration" , new 
			{
				AppliesTo = "1",
				IsAdminConfigurable = false,
				AllowedUsers = new List<>
				{
				},
				AllowedGroups = new List<>
				{
				},
			}
		},
		{
			"azureADJoin" , new 
			{
				AppliesTo = "1",
				IsAdminConfigurable = true,
				AllowedUsers = new List<>
				{
				},
				AllowedGroups = new List<>
				{
				},
			}
		},
		{
			"localAdminPassword" , new 
			{
				IsEnabled = true,
			}
		},
	},
};
await graphClient.Policies.DeviceRegistrationPolicy.PutAsync(requestBody);


```