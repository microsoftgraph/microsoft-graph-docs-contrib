---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Device();
$requestBody->setAccountEnabled(false);

$result = $graphServiceClient->devices()->byDeviceId('device-id')->patch($requestBody)->wait();

```