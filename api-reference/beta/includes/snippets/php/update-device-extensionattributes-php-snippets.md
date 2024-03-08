---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Device();
$extensionAttributes = new OnPremisesExtensionAttributes();
$extensionAttributes->setExtensionAttribute1('BYOD-Device');
$requestBody->setExtensionAttributes($extensionAttributes);

$result = $graphServiceClient->devices()->byDeviceId('device-id')->patch($requestBody)->wait();

```