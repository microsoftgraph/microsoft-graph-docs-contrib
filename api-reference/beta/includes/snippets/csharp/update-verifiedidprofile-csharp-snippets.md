---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new VerifiedIdProfile
{
	VerifiedIdProfileConfiguration = new VerifiedIdProfileConfiguration
	{
		MethodType = VerifiedIdMethodType.TenantCustomCredential,
		ManifestUrl = "https://verifiedid.contoso.com/manifest",
	},
	MobileDriversLicenseConfiguration = new MobileDriversLicenseConfiguration
	{
		AcceptedRegions = new List<string>
		{
			"region-code",
		},
		DocumentStandard = "document-standard",
	},
	SelfServiceIssuance = new VerifiedIdSelfServiceIssuance
	{
		IsEnabled = true,
		IssuanceUrl = "https://verifiedid.contoso.com/issue",
	},
	VerifiedIdUsageConfigurations = new List<VerifiedIdUsageConfiguration>
	{
		new VerifiedIdUsageConfiguration
		{
			IsEnabledForTestOnly = false,
			Purpose = VerifiedIdUsageConfigurationPurpose.Verification,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.VerifiedId.Profiles["{verifiedIdProfile-id}"].PatchAsync(requestBody);


```