---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.TenantAdmin.Settings
{
	DeletedUserPersonalSiteRetentionPeriodInDays = 365,
	ExcludedFileExtensionsForSyncApp = new List<string>
	{
		".mp3",
	},
	ImageTaggingOption = Microsoft.Graph.Beta.Models.TenantAdmin.ImageTaggingChoice.Enhanced,
	IsLegacyAuthProtocolsEnabled = true,
	IsSitesStorageLimitAutomatic = false,
	IsSyncButtonHiddenOnPersonalSite = false,
	IsUnmanagedSyncAppForTenantRestricted = false,
	PersonalSiteDefaultStorageLimitInMB = 120000L,
};
var result = await graphClient.Admin.Sharepoint.Settings.PatchAsync(requestBody);


```