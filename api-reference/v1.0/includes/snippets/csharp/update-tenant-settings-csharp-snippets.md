---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new SharepointSettings
{
	DeletedUserPersonalSiteRetentionPeriodInDays = 365,
	ExcludedFileExtensionsForSyncApp = new List<string>
	{
		".mp3",
	},
	ImageTaggingOption = ImageTaggingChoice.Enhanced,
	IsLegacyAuthProtocolsEnabled = true,
	IsSitesStorageLimitAutomatic = false,
	IsSyncButtonHiddenOnPersonalSite = false,
	IsUnmanagedSyncAppForTenantRestricted = false,
	PersonalSiteDefaultStorageLimitInMB = 120000L,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Sharepoint.Settings.PatchAsync(requestBody);


```