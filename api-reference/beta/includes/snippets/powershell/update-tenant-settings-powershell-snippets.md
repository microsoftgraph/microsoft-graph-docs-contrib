---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Sites

$params = @{
	deletedUserPersonalSiteRetentionPeriodInDays = 365
	excludedFileExtensionsForSyncApp = @(
	".mp3"
)
imageTaggingOption = "enhanced"
isLegacyAuthProtocolsEnabled = $true
isSitesStorageLimitAutomatic = $false
isSyncButtonHiddenOnPersonalSite = $false
isUnmanagedSyncAppForTenantRestricted = $false
personalSiteDefaultStorageLimitInMB = 120000
}

Update-MgBetaAdminSharepointSetting -BodyParameter $params

```