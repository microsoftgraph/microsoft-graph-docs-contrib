---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SiteRestoreArtifactsBulkAdditionRequest;
use Microsoft\Graph\Beta\Generated\Models\TimePeriod;
use Microsoft\Graph\Beta\Generated\Models\DestinationType;
use Microsoft\Graph\Beta\Generated\Models\RestorePointTags;
use Microsoft\Graph\Beta\Generated\Models\RestorePointPreference;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SiteRestoreArtifactsBulkAdditionRequest();
$requestBody->setDisplayName('SPO-BulkRestoreArtifacts');
$requestBody->setSiteWebUrls(['https: //contoso1.sharepoint.com', 'https: //contoso2.sharepoint.com', 'https: //contoso3.sharepoint.com', 	]);
$protectionTimePeriod = new TimePeriod();
$protectionTimePeriod->setStartDateTime(new \DateTime('2024-01-01T00:00:00Z'));
$protectionTimePeriod->setEndDateTime(new \DateTime('2024-01-08T00:00:00Z'));
$requestBody->setProtectionTimePeriod($protectionTimePeriod);
$requestBody->setDestinationType(new DestinationType('new'));
$requestBody->setTags(new RestorePointTags('fastRestore'));
$requestBody->setRestorePointPreference(new RestorePointPreference('latest'));

$result = $graphServiceClient->solutions()->backupRestore()->sharePointRestoreSessions()->bySharePointRestoreSessionId('sharePointRestoreSession-id')->siteRestoreArtifactsBulkAdditionRequests()->post($requestBody)->wait();

```