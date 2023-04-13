---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SharepointSettings();
$requestBody->setDeletedUserPersonalSiteRetentionPeriodInDays(365);

$requestBody->setExcludedFileExtensionsForSyncApp(['.mp3', ]);

$requestBody->setImageTaggingOption(new ImageTaggingChoice('enhanced'));

$requestBody->setIsLegacyAuthProtocolsEnabled(true);

$requestBody->setIsSitesStorageLimitAutomatic(false);

$requestBody->setIsSyncButtonHiddenOnPersonalSite(false);

$requestBody->setIsUnmanagedSyncAppForTenantRestricted(false);

$requestBody->setPersonalSiteDefaultStorageLimitInMB(120000);



$result = $graphServiceClient->admin()->sharepoint()->settings()->patch($requestBody);


```