---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeleteTiIndicatorsByExternalIdPostRequestBody();
$requestBody->setValue(['externalId-value1', 'externalId-value2', 	]);

$result = $graphServiceClient->security()->tiIndicators()->deleteTiIndicatorsByExternalId()->post($requestBody)->wait();

```