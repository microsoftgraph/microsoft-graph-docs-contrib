---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new Fido2AuthenticationMethodConfiguration
{
	OdataType = "#microsoft.graph.fido2AuthenticationMethodConfiguration",
	Id = "Fido2",
	State = AuthenticationMethodState.Disabled,
	IsSelfServiceRegistrationAllowed = true,
	IsAttestationEnforced = true,
	KeyRestrictions = new Fido2KeyRestrictions
	{
		IsEnforced = false,
		EnforcementType = Fido2RestrictionEnforcementType.Block,
		AaGuids = new List<string>
		{
		},
	},
	IncludeTargets = new List<AuthenticationMethodTarget>
	{
		new AuthenticationMethodTarget
		{
			TargetType = AuthenticationMethodTargetType.Group,
			Id = "all_users",
			IsRegistrationRequired = false,
			AdditionalData = new Dictionary<string, object>
			{
				{
					"allowedPasskeyProfiles" , new List<string>
					{
						"00000000-0000-0000-0000-000000000001",
					}
				},
			},
		},
	},
	ExcludeTargets = new List<ExcludeTarget>
	{
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"passkeyProfiles" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"id", new UntypedString("00000000-0000-0000-0000-000000000001")
					},
					{
						"name", new UntypedString("Default passkey profile")
					},
					{
						"passkeyTypes", new UntypedString("deviceBound,synced")
					},
					{
						"attestationEnforcement", new UntypedString("disabled")
					},
					{
						"keyRestrictions", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"isEnforced", new UntypedBoolean(false)
							},
							{
								"enforcementType", new UntypedString("allow")
							},
							{
								"aaGuids", new UntypedArray(new List<UntypedNode>
								{
								})
							},
						})
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.AuthenticationMethodsPolicy.AuthenticationMethodConfigurations["{authenticationMethodConfiguration-id}"].PatchAsync(requestBody);


```