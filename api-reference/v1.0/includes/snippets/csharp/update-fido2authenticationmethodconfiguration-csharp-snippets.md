---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

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
	IncludeTargets = new List<PasskeyAuthenticationMethodTarget>
	{
		new PasskeyAuthenticationMethodTarget
		{
			TargetType = AuthenticationMethodTargetType.Group,
			Id = "all_users",
			IsRegistrationRequired = false,
			AllowedPasskeyProfiles = new List<Guid?>
			{
				Guid.Parse("00000000-0000-0000-0000-000000000001"),
			},
		},
	},
	ExcludeTargets = new List<ExcludeTarget>
	{
	},
	PasskeyProfiles = new List<PasskeyProfile>
	{
		new PasskeyProfile
		{
			Id = "00000000-0000-0000-0000-000000000001",
			Name = "Default passkey profile",
			PasskeyTypes = PasskeyTypes.DeviceBound | PasskeyTypes.Synced,
			AttestationEnforcement = AttestationEnforcement.Disabled,
			KeyRestrictions = new Fido2KeyRestrictions
			{
				IsEnforced = false,
				EnforcementType = Fido2RestrictionEnforcementType.Allow,
				AaGuids = new List<string>
				{
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.AuthenticationMethodsPolicy.AuthenticationMethodConfigurations["{authenticationMethodConfiguration-id}"].PatchAsync(requestBody);


```