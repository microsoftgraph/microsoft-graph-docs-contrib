---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CloudPcExternalPartnerSetting;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcExternalPartnerSetting();
$requestBody->setOdataType('#microsoft.graph.cloudPcExternalPartnerSetting');
$requestBody->setEnableConnection(true);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartnerSettings()->byCloudPcExternalPartnerSettingId('cloudPcExternalPartnerSetting-id')->patch($requestBody)->wait();

```