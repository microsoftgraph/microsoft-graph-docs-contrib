---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new TenantAppManagementPolicy
{
	IsEnabled = true,
	ApplicationRestrictions = new AppManagementApplicationConfiguration
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
				MaxLifetime = TimeSpan.Parse("P90D"),
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
				MaxLifetime = TimeSpan.Parse("P30D"),
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
			new KeyCredentialConfiguration
			{
				RestrictionType = AppKeyCredentialRestrictionType.TrustedCertificateAuthority,
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2019-10-19T10:37:00Z"),
				CertificateBasedApplicationConfigurationIds = new List<string>
				{
					"eec5ba11-2fc0-4113-83a2-ed986ed13743",
					"bb8e164b-f9ed-4b98-bc45-65eddc14f4c1",
				},
				MaxLifetime = null,
			},
		},
		IdentifierUris = new IdentifierUriConfiguration
		{
			NonDefaultUriAddition = new IdentifierUriRestriction
			{
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2024-01-01T10:37:00Z"),
				ExcludeAppsReceivingV2Tokens = true,
				ExcludeSaml = true,
				ExcludeActors = new AppManagementPolicyActorExemptions
				{
					CustomSecurityAttributes = new List<CustomSecurityAttributeExemption>
					{
						new CustomSecurityAttributeStringValueExemption
						{
							OdataType = "microsoft.graph.customSecurityAttributeStringValueExemption",
							Id = "PolicyExemptions_AppManagementExemption",
							Operator = CustomSecurityAttributeComparisonOperator.Equals,
							Value = "ExemptFromIdentifierUriAdditionRestriction",
						},
					},
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.DefaultAppManagementPolicy.PatchAsync(requestBody);


```