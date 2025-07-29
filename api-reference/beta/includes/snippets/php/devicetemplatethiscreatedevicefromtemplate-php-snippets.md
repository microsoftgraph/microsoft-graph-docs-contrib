---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Templates\DeviceTemplates\Item\CreateDeviceFromTemplate\CreateDeviceFromTemplatePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreateDeviceFromTemplatePostRequestBody();
$requestBody->setExternalDeviceId('2fa9424e-7ab0-4a22-8c90-2a20d15d8183');
$requestBody->setOperatingSystemVersion('Ubuntu 18.04');
$requestBody->setExternalSourceName('unknown');
$requestBody->setAccountEnabled(false);
$requestBody->setAlternativeNames(['/subscriptions/00001111-aaaa-2222-bbbb-3333cccc4444/resourcegroups/testrg/providers/microsoft.deviceregistry/assets/asset1', 	]);

$result = $graphServiceClient->templates()->deviceTemplates()->byDeviceTemplateId('deviceTemplate-id')->createDeviceFromTemplate()->post($requestBody)->wait();

```