---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CloudPcCloudApp;
use Microsoft\Graph\Beta\Generated\Models\CloudPcCloudAppDetail;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcCloudApp();
$requestBody->setOdataType('#microsoft.graph.cloudPcCloudApp');
$requestBody->setDisplayName('Cloud App example3');
$appDetail = new CloudPcCloudAppDetail();
$appDetail->setIconPath('C:\Windows\system32\WindowsPowerShell\v1.0\powershell_ise.exe');
$requestBody->setAppDetail($appDetail);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->cloudApps()->byCloudPcCloudAppId('cloudPcCloudApp-id')->patch($requestBody)->wait();

```