---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WindowsInformationProtectionNetworkLearningSummary;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WindowsInformationProtectionNetworkLearningSummary();
$requestBody->setOdataType('#microsoft.graph.windowsInformationProtectionNetworkLearningSummary');
$requestBody->setUrl('Url value');
$requestBody->setDeviceCount(11);

$result = $graphServiceClient->deviceManagement()->windowsInformationProtectionNetworkLearningSummaries()->byWindowsInformationProtectionNetworkLearningSummaryId('windowsInformationProtectionNetworkLearningSummary-id')->patch($requestBody)->wait();

```