---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TiIndicator();
$requestBody->setDescription('description-updated');

$result = $graphServiceClient->security()->tiIndicators()->byTiIndicatorId('tiIndicator-id')->patch($requestBody)->wait();

```