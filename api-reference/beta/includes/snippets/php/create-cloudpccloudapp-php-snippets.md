---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CloudPcCloudApp;
use Microsoft\Graph\Beta\Generated\Models\CloudPcFilePathAppDetail;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcCloudApp();
$requestBody->setDisplayName('Remote Desktop Connection');
$requestBody->setDiscoveredAppName('Remote Desktop Connection');
$requestBody->setProvisioningPolicyId('e31f75e9-25a8-41e9-a9d5-ce8fd484af15');
$requestBody->setDescription('');
$appDetail = new CloudPcFilePathAppDetail();
$appDetail->setOdataType('#microsoft.graph.cloudPcFilePathAppDetail');
$appDetail->setFilePath('C:\Windows\system32\mstsc.exe');
$appDetail->setCommandLineArguments('');
$appDetail->setIconPath('C:\Windows\system32\mstsc.exe');
$appDetail->setIconIndex(0);
$requestBody->setAppDetail($appDetail);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->cloudApps()->post($requestBody)->wait();

```