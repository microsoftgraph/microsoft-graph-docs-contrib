---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewSharepointSettings()
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
personalSiteDefaultStorageLimitInMB := int32(120000)
requestBody.SetPersonalSiteDefaultStorageLimitInMB(&personalSiteDefaultStorageLimitInMB) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
settings, err := graphClient.Admin().Sharepoint().Settings().Patch(context.Background(), requestBody, nil)


```