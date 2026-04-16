---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\DeviceManagement\VirtualEndpoint\CloudPCs\Item\Reprovision\ReprovisionPostRequestBody;
use Microsoft\Graph\Generated\Models\CloudPcUserAccountType;
use Microsoft\Graph\Generated\Models\CloudPcOperatingSystem;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReprovisionPostRequestBody();
$requestBody->setUserAccountType(new CloudPcUserAccountType('administrator'));
$requestBody->setOsVersion(new CloudPcOperatingSystem('windows10'));

$graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPCs()->byCloudPCId('cloudPC-id')->reprovision()->post($requestBody)->wait();

```