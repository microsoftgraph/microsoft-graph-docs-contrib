---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CloudPcExternalPartnerSetting;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcExternalPartnerSetting();
$requestBody->setOdataType('#microsoft.graph.cloudPcExternalPartnerSetting');
$requestBody->setEnableConnection(true);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartnerSettings()->byCloudPcExternalPartnerSettingId('cloudPcExternalPartnerSetting-id')->patch($requestBody)->wait();

```