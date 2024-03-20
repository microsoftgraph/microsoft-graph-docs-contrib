---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeleteTiIndicatorsPostRequestBody();
$requestBody->setValue(['id-value1', 'id-value2', 	]);

$result = $graphServiceClient->security()->tiIndicators()->deleteTiIndicators()->post($requestBody)->wait();

```