---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appManagementPolicy = new AppManagementPolicy
{
	DisplayName = "Credential management policy",
	Description = "Cred policy sample",
	IsEnabled = true,
	Restrictions = new AppManagementConfiguration
	{
		PasswordCredentials = new List<PasswordCredentialConfiguration>()
		{
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.PasswordAddition,
				MaxLifetime = null,
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2019-10-19T10:37:00Z")
			},
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.PasswordLifetime,
				MaxLifetime = new Duration("P4DT12H30M5S"),
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2018-10-19T10:37:00Z")
			}
		}
	}
};

await graphClient.Policies.AppManagementPolicies
	.Request()
	.AddAsync(appManagementPolicy);

```