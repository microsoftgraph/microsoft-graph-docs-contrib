---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TenantAppManagementPolicy
{
	IsEnabled = true,
	ApplicationRestrictions = new AppManagementConfiguration
	{
		PasswordCredentials = new List<PasswordCredentialConfiguration>
		{
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.PasswordAddition,
				MaxLifetime = null,
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2021-01-01T10:37:00Z"),
			},
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.PasswordLifetime,
				MaxLifetime = TimeSpan.Parse("P4DT12H30M5S"),
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2017-01-01T10:37:00Z"),
			},
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.SymmetricKeyAddition,
				MaxLifetime = null,
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2021-01-01T10:37:00Z"),
			},
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.CustomPasswordAddition,
				MaxLifetime = null,
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2015-01-01T10:37:00Z"),
			},
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.SymmetricKeyLifetime,
				MaxLifetime = TimeSpan.Parse("P40D"),
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2015-01-01T10:37:00Z"),
			},
		},
		KeyCredentials = new List<KeyCredentialConfiguration>
		{
			new KeyCredentialConfiguration
			{
				RestrictionType = AppKeyCredentialRestrictionType.AsymmetricKeyLifetime,
				MaxLifetime = TimeSpan.Parse("P30D"),
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2015-01-01T10:37:00Z"),
			},
		},
	},
};
var result = await graphClient.Policies.DefaultAppManagementPolicy.PatchAsync(requestBody);


```