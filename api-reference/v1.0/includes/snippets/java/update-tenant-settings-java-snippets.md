---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SharepointSettings sharepointSettings = new SharepointSettings();
sharepointSettings.deletedUserPersonalSiteRetentionPeriodInDays = 365;
LinkedList<String> excludedFileExtensionsForSyncAppList = new LinkedList<String>();
excludedFileExtensionsForSyncAppList.add(".mp3");
sharepointSettings.excludedFileExtensionsForSyncApp = excludedFileExtensionsForSyncAppList;
sharepointSettings.imageTaggingOption = ImageTaggingChoice.ENHANCED;
sharepointSettings.isLegacyAuthProtocolsEnabled = true;
sharepointSettings.isSitesStorageLimitAutomatic = false;
sharepointSettings.isSyncButtonHiddenOnPersonalSite = false;
sharepointSettings.isUnmanagedSyncAppForTenantRestricted = false;
sharepointSettings.personalSiteDefaultStorageLimitInMB = 120000L;

graphClient.admin().sharepoint().settings()
	.buildRequest()
	.patch(sharepointSettings);

```