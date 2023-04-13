---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DeleteTiIndicatorsByExternalIdPostRequestBody();
$requestBody->setValue(['externalId-value1', 'externalId-value2', ]);



$result = $graphServiceClient->security()->tiIndicators()->deleteTiIndicatorsByExternalId()->post($requestBody);


```