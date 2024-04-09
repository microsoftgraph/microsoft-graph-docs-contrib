---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WindowsInformationProtectionAppLearningSummary;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WindowsInformationProtectionAppLearningSummary();
$requestBody->setOdataType('#microsoft.graph.windowsInformationProtectionAppLearningSummary');
$requestBody->setApplicationName('Application Name value');
$requestBody->setApplicationType(new ApplicationType('desktop'));
$requestBody->setDeviceCount(11);

$result = $graphServiceClient->deviceManagement()->windowsInformationProtectionAppLearningSummaries()->byWindowsInformationProtectionAppLearningSummaryId('windowsInformationProtectionAppLearningSummary-id')->patch($requestBody)->wait();

```