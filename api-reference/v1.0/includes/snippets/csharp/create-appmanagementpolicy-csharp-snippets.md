---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
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
				AdditionalData = new Dictionary<string, object>
				{
					{
						"state" , "enabled"
					},
				},
			},
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.PasswordLifetime,
				MaxLifetime = TimeSpan.Parse("P90D"),
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2014-10-19T10:37:00Z"),
				AdditionalData = new Dictionary<string, object>
				{
					{
						"state" , "enabled"
					},
				},
			},
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.SymmetricKeyAddition,
				MaxLifetime = null,
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2019-10-19T10:37:00Z"),
				AdditionalData = new Dictionary<string, object>
				{
					{
						"state" , "enabled"
					},
				},
			},
			new PasswordCredentialConfiguration
			{
				RestrictionType = AppCredentialRestrictionType.SymmetricKeyLifetime,
				MaxLifetime = TimeSpan.Parse("P90D"),
				RestrictForAppsCreatedAfterDateTime = DateTimeOffset.Parse("2014-10-19T10:37:00Z"),
				AdditionalData = new Dictionary<string, object>
				{
					{
						"state" , "enabled"
					},
				},
			},
		},
		KeyCredentials = new List<KeyCredentialConfiguration>
		{
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
										"state", new UntypedString("disabled")
									},
									{
										"restrictForAppsCreatedAfterDateTime", new UntypedNull()
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