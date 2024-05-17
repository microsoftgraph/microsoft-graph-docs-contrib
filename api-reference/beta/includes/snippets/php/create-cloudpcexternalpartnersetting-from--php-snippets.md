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
$requestBody->setPartnerId('198d7140-80bb-4843-8cc4-811377a49a92');
$requestBody->setEnableConnection(true);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartnerSettings()->post($requestBody)->wait();

```