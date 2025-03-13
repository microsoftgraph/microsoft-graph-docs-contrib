---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharepointSettings sharepointSettings = new SharepointSettings();
sharepointSettings.setDeletedUserPersonalSiteRetentionPeriodInDays(365);
LinkedList<String> excludedFileExtensionsForSyncApp = new LinkedList<String>();
excludedFileExtensionsForSyncApp.add(".mp3");
sharepointSettings.setExcludedFileExtensionsForSyncApp(excludedFileExtensionsForSyncApp);
sharepointSettings.setImageTaggingOption(ImageTaggingChoice.Enhanced);
sharepointSettings.setIsLegacyAuthProtocolsEnabled(true);
sharepointSettings.setIsSitesStorageLimitAutomatic(false);
sharepointSettings.setIsSyncButtonHiddenOnPersonalSite(false);
sharepointSettings.setIsUnmanagedSyncAppForTenantRestricted(false);
sharepointSettings.setPersonalSiteDefaultStorageLimitInMB(120000L);
SharepointSettings result = graphClient.admin().sharepoint().settings().patch(sharepointSettings);


```