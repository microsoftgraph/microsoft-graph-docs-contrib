---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\Zone;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Zone();
$requestBody->setDisplayName('Updated Production Zone');
$requestBody->setDescription('Updated description for production environments');

$result = $graphServiceClient->security()->zones()->byZoneId('zone-id')->patch($requestBody)->wait();

```