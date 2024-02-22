---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TiIndicator();
$requestBody->setDescription('description-updated');

$result = $graphServiceClient->security()->tiIndicators()->byTiIndicatorId('tiIndicator-id')->patch($requestBody)->wait();

```