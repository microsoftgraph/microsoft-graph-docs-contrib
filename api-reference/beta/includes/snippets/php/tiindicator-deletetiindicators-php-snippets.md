---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DeleteTiIndicatorsPostRequestBody();
$requestBody->setValue(['id-value1', 'id-value2', ]);



$result = $graphServiceClient->security()->tiIndicators()->deleteTiIndicators()->post($requestBody);


```