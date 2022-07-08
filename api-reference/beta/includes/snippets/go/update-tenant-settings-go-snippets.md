---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewSettings()
deletedUserPersonalSiteRetentionPeriodInDays := int32(365)
requestBody.SetDeletedUserPersonalSiteRetentionPeriodInDays(&deletedUserPersonalSiteRetentionPeriodInDays)
requestBody.SetExcludedFileExtensionsForSyncApp( []String {
	".mp3",
}
imageTaggingOption := "enhanced"
requestBody.SetImageTaggingOption(&imageTaggingOption)
isSitesStorageLimitAutomatic := false
requestBody.SetIsSitesStorageLimitAutomatic(&isSitesStorageLimitAutomatic)
isSyncButtonHiddenOnPersonalSite := false
requestBody.SetIsSyncButtonHiddenOnPersonalSite(&isSyncButtonHiddenOnPersonalSite)
isUnmanagedSyncAppForTenantRestricted := false
requestBody.SetIsUnmanagedSyncAppForTenantRestricted(&isUnmanagedSyncAppForTenantRestricted)
personalSiteDefaultStorageLimitInMB := int64(120000)
requestBody.SetPersonalSiteDefaultStorageLimitInMB(&personalSiteDefaultStorageLimitInMB)
graphClient.Admin().Sharepoint().Settings().Patch(requestBody)


```