---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var deviceRegistrationPolicy = new DeviceRegistrationPolicy
{
	Id = "deviceRegistrationPolicy",
	DisplayName = "Device Registration Policy",
	Description = "Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks",
	UserDeviceQuota = 50,
	MultiFactorAuthConfiguration = MultiFactorAuthConfiguration.NotRequired,
	AzureADRegistration = new AzureADRegistrationPolicy
	{
		AppliesTo = PolicyScope.None,
		IsAdminConfigurable = false,
		AllowedUsers = new List<String>()
		{
		},
		AllowedGroups = new List<String>()
		{
		}
	},
	AzureADJoin = new AzureAdJoinPolicy
	{
		AppliesTo = PolicyScope.None,
		IsAdminConfigurable = true,
		AllowedUsers = new List<String>()
		{
		},
		AllowedGroups = new List<String>()
		{
		}
	}
};

await graphClient.DeviceRegistrationPolicy
	.Request()
	.PutAsync(deviceRegistrationPolicy);

```