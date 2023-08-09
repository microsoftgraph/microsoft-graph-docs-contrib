---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceManagementExportJob();
$requestBody->setOdataType('#microsoft.graph.deviceManagementExportJob');

$requestBody->setReportName('Report Name value');

$requestBody->setFilter('Filter value');

$requestBody->setSelect(['Select value', 	]);

$requestBody->setFormat(new DeviceManagementReportFileFormat('pdf'));

$requestBody->setSnapshotId('Snapshot Id value');

$requestBody->setLocalizationType(new DeviceManagementExportJobLocalizationType('replaceLocalizableValues'));

$requestBody->setStatus(new DeviceManagementReportStatus('notStarted'));

$requestBody->setUrl('Url value');

$requestBody->setRequestDateTime(new \DateTime('2017-01-01T00:03:07.1589002-08:00'));

$requestBody->setExpirationDateTime(new \DateTime('2016-12-31T23:57:57.2481234-08:00'));



$result = $graphServiceClient->deviceManagement()->reports()->exportJobs()->byDeviceManagementExportJobId('deviceManagementExportJob-id')->patch($requestBody);


```