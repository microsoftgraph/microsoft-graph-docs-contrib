---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new TenantAppManagementPolicy
{
	Id = "d015220e-9789-4e8e-bbcc-270fe419229d",
	Description = "Lorem ipsum",
	DisplayName = "Credential management policy",
	IsEnabled = true,
	ApplicationRestrictions = new AppManagementApplicationConfiguration
	{
		PasswordCredentials = new List<PasswordCredentialConfiguration>
		{
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.PasswordLifetime,
				MaxLifetime = TimeSpan.Parse("P14D"),
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2020-01-01T07:00:00Z"),
			},
		},
		KeyCredentials = new List<KeyCredentialConfiguration>
		{
			new KeyCredentialConfiguration
			{
				RestrictionType = AppKeyCredentialRestrictionType.AsymmetricKeyLifetime,
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2020-01-01T10:37:00Z"),
				MaxLifetime = TimeSpan.Parse("P90D"),
			},
			new KeyCredentialConfiguration
			{
				RestrictionType = AppKeyCredentialRestrictionType.AsymmetricKeyLifetime,
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2019-10-19T10:37:00Z"),
				AdditionalData = new Dictionary<string, object>
				{
					{
						"certificateBasedApplicationConfigurationIds" , new List<string>
						{
							"eec5ba11-2fc0-4113-83a2-ed986ed13743",
						}
					},
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.DefaultAppManagementPolicy.PatchAsync(requestBody);


```