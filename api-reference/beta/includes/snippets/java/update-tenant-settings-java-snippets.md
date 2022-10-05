---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Settings settings = new Settings();
settings.deletedUserPersonalSiteRetentionPeriodInDays = 365;
LinkedList<String> excludedFileExtensionsForSyncAppList = new LinkedList<String>();
excludedFileExtensionsForSyncAppList.add(".mp3");
settings.excludedFileExtensionsForSyncApp = excludedFileExtensionsForSyncAppList;
settings.imageTaggingOption = ImageTaggingChoice.ENHANCED;
settings.isLegacyAuthProtocolsEnabled = true;
settings.isSitesStorageLimitAutomatic = false;
settings.isSyncButtonHiddenOnPersonalSite = false;
settings.isUnmanagedSyncAppForTenantRestricted = false;
settings.personalSiteDefaultStorageLimitInMB = 120000L;

graphClient.admin().sharepoint().settings()
	.buildRequest()
	.patch(settings);

```