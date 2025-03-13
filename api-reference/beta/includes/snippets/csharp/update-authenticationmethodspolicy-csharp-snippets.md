---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AuthenticationMethodsPolicy
{
	RegistrationEnforcement = new RegistrationEnforcement
	{
		AuthenticationMethodsRegistrationCampaign = new AuthenticationMethodsRegistrationCampaign
		{
			SnoozeDurationInDays = 1,
			EnforceRegistrationAfterAllowedSnoozes = true,
			State = AdvancedConfigState.Enabled,
			ExcludeTargets = new List<ExcludeTarget>
			{
			},
			IncludeTargets = new List<AuthenticationMethodsRegistrationCampaignIncludeTarget>
			{
				new AuthenticationMethodsRegistrationCampaignIncludeTarget
				{
					Id = "3ee3a9de-0a86-4e12-a287-9769accf1ba2",
					TargetType = AuthenticationMethodTargetType.Group,
					TargetedAuthenticationMethod = "microsoftAuthenticator",
				},
			},
		},
	},
	ReportSuspiciousActivitySettings = new ReportSuspiciousActivitySettings
	{
		State = AdvancedConfigState.Enabled,
		IncludeTarget = new IncludeTarget
		{
			TargetType = AuthenticationMethodTargetType.Group,
			Id = "all_users",
		},
		VoiceReportingCode = 0,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.AuthenticationMethodsPolicy.PatchAsync(requestBody);


```