---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeleteTiIndicatorsByExternalIdPostRequestBody();
$requestBody->setValue(['externalId-value1', 'externalId-value2', 	]);

$result = $graphServiceClient->security()->tiIndicators()->deleteTiIndicatorsByExternalId()->post($requestBody)->wait();

```