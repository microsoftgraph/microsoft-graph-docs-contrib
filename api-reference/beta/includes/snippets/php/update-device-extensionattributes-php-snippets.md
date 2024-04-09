---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Device;
use Microsoft\Graph\Generated\Models\OnPremisesExtensionAttributes;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Device();
$extensionAttributes = new OnPremisesExtensionAttributes();
$extensionAttributes->setExtensionAttribute1('BYOD-Device');
$requestBody->setExtensionAttributes($extensionAttributes);

$result = $graphServiceClient->devices()->byDeviceId('device-id')->patch($requestBody)->wait();

```