---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\CloudPCs\Item\Reprovision\ReprovisionPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\CloudPcUserAccountType;
use Microsoft\Graph\Beta\Generated\Models\CloudPcOperatingSystem;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReprovisionPostRequestBody();
$requestBody->setUserAccountType(new CloudPcUserAccountType('administrator'));
$requestBody->setOsVersion(new CloudPcOperatingSystem('windows10'));

$graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPCs()->byCloudPCId('cloudPC-id')->reprovision()->post($requestBody)->wait();

```