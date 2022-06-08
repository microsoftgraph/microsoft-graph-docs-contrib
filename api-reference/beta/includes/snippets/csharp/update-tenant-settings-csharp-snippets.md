---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var settings = new Microsoft.Graph.TenantAdmin.Settings
{
	DeletedUserPersonalSiteRetentionPeriodInDays = 365,
	ExcludedFileExtensionsForSyncApp = new List<String>()
	{
		".mp3"
	},
	ImageTaggingOption = Microsoft.Graph.TenantAdmin.ImageTaggingChoice.Enhanced,
	IsSitesStorageLimitAutomatic = false,
	IsSyncButtonHiddenOnPersonalSite = false,
	IsUnmanagedSyncAppForTenantRestricted = false,
	PersonalSiteDefaultStorageLimitInMB = 120000
};

await graphClient.Admin.Sharepoint.Settings
	.Request()
	.UpdateAsync(settings);

```