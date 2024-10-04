---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AppManagementPolicy
{
	DisplayName = "Credential management policy",
	Description = "Cred policy sample",
	IsEnabled = true,
	Restrictions = new CustomAppManagementConfiguration
	{
		PasswordCredentials = new List<PasswordCredentialConfiguration>
		{
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.PasswordAddition,
				MaxLifetime = null,
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2019-10-19T10:37:00Z"),
			},
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.PasswordLifetime,
				MaxLifetime = TimeSpan.Parse("P90D"),
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2014-10-19T10:37:00Z"),
			},
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.SymmetricKeyAddition,
				MaxLifetime = null,
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2019-10-19T10:37:00Z"),
			},
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.SymmetricKeyLifetime,
				MaxLifetime = TimeSpan.Parse("P30D"),
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2014-10-19T10:37:00Z"),
			},
		},
		KeyCredentials = new List<KeyCredentialConfiguration>
		{
			new KeyCredentialConfiguration
			{
				RestrictionType = AppKeyCredentialRestrictionType.AsymmetricKeyLifetime,
				MaxLifetime = TimeSpan.Parse("P90D"),
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2014-10-19T10:37:00Z"),
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
		AdditionalData = new Dictionary<string, object>
		{
			{
				"applicationRestrictions" , new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"identifierUris", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"nonDefaultUriAddition", new UntypedObject(new Dictionary<string, UntypedNode>
								{
									{
										"restrictForAppsCreatedAfterDateTime", new UntypedString("2024-01-01T10:37:00Z")
									},
									{
										"excludeAppsReceivingV2Tokens", new UntypedBoolean(true)
									},
									{
										"excludeSaml", new UntypedBoolean(true)
									},
								})
							},
						})
					},
				})
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.AppManagementPolicies.PostAsync(requestBody);


```