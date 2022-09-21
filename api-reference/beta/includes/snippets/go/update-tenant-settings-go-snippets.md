---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSettings()
deletedUserPersonalSiteRetentionPeriodInDays := int32(365)
requestBody.SetDeletedUserPersonalSiteRetentionPeriodInDays(&deletedUserPersonalSiteRetentionPeriodInDays) 
excludedFileExtensionsForSyncApp := []string {
	".mp3",

}
requestBody.SetExcludedFileExtensionsForSyncApp(excludedFileExtensionsForSyncApp)
imageTaggingOption := graphmodels.ENHANCED_IMAGETAGGINGCHOICE 
requestBody.SetImageTaggingOption(&imageTaggingOption) 
isLegacyAuthProtocolsEnabled := true
requestBody.SetIsLegacyAuthProtocolsEnabled(&isLegacyAuthProtocolsEnabled) 
isSitesStorageLimitAutomatic := false
requestBody.SetIsSitesStorageLimitAutomatic(&isSitesStorageLimitAutomatic) 
isSyncButtonHiddenOnPersonalSite := false
requestBody.SetIsSyncButtonHiddenOnPersonalSite(&isSyncButtonHiddenOnPersonalSite) 
isUnmanagedSyncAppForTenantRestricted := false
requestBody.SetIsUnmanagedSyncAppForTenantRestricted(&isUnmanagedSyncAppForTenantRestricted) 
personalSiteDefaultStorageLimitInMB := int64(120000)
requestBody.SetPersonalSiteDefaultStorageLimitInMB(&personalSiteDefaultStorageLimitInMB) 

graphClient.Admin().Sharepoint().Settings().Patch(context.Background(), requestBody, nil)


```