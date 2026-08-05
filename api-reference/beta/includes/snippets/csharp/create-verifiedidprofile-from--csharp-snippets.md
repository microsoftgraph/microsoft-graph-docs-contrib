---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new VerifiedIdProfile
{
	Name = "Contoso Verified ID",
	Description = "Contoso Verified Identity",
	LastModifiedDateTime = null,
	State = VerifiedIdProfileState.Enabled,
	VerifierDid = "did:web:eu.did-dev.contoso.io",
	Priority = 0,
	VerifiedIdProfileConfiguration = new VerifiedIdProfileConfiguration
	{
		Type = "verifiedIdentity",
		AcceptedIssuer = "did:web:eu.did-dev.contoso.io",
		ClaimBindingSource = ClaimBindingSource.Directory,
		ClaimBindings = new List<ClaimBinding>
		{
			new ClaimBinding
			{
				SourceAttribute = "First name",
				VerifiedIdClaim = "vc.credentialSubject.firstName",
			},
			new ClaimBinding
			{
				SourceAttribute = "Last name",
				VerifiedIdClaim = "vc.credentialSubject.lastName",
			},
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"methodType" , "tenantCustomCredential"
			},
			{
				"manifestUrl" , "https://verifiedid.contoso.com/manifest"
			},
		},
	},
	FaceCheckConfiguration = new FaceCheckConfiguration
	{
		IsEnabled = true,
		SourcePhotoClaimName = "portrait",
	},
	VerifiedIdUsageConfigurations = new List<VerifiedIdUsageConfiguration>
	{
		new VerifiedIdUsageConfiguration
		{
			IsEnabledForTestOnly = true,
			Purpose = VerifiedIdUsageConfigurationPurpose.Recovery,
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"mobileDriversLicenseConfiguration" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"acceptedRegions", new UntypedArray(new List<UntypedNode>
					{
						new UntypedString("region-code"),
					})
				},
				{
					"documentStandard", new UntypedString("document-standard")
				},
			})
		},
		{
			"selfServiceIssuance" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"isEnabled", new UntypedBoolean(true)
				},
				{
					"issuanceUrl", new UntypedString("https://verifiedid.contoso.com/issue")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.VerifiedId.Profiles.PostAsync(requestBody);


```