---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TranslateExchangeIdsPostRequestBody();
$requestBody->setInputIds(['{rest-formatted-id-1}', '{rest-formatted-id-2}', ]);

$requestBody->setSourceIdType(new ExchangeIdFormat('restid'));

$requestBody->setTargetIdType(new ExchangeIdFormat('restimmutableentryid'));



$result = $graphServiceClient->me()->translateExchangeIds()->post($requestBody);


```