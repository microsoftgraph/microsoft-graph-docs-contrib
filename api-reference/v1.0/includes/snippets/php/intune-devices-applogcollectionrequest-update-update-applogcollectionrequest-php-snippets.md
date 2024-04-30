---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AppLogCollectionRequest;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppLogCollectionRequest();
$requestBody->setOdataType('#microsoft.graph.appLogCollectionRequest');
$requestBody->setStatus(new AppLogUploadState('completed'));
$requestBody->setErrorMessage('Error Message value');
$requestBody->setCustomLogFolders(['Custom Log Folders value', 	]);
$requestBody->setCompletedDateTime(new \DateTime('2016-12-31T23:58:52.3534526-08:00'));

$result = $graphServiceClient->deviceManagement()->mobileAppTroubleshootingEvents()->byMobileAppTroubleshootingEventId('mobileAppTroubleshootingEvent-id')->appLogCollectionRequests()->byAppLogCollectionRequestId('appLogCollectionRequest-id')->patch($requestBody)->wait();

```