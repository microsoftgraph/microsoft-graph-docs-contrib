---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TranslateExchangeIdsPostRequestBody();
$requestBody->setInputIds(['{rest-formatted-id-1}', '{rest-formatted-id-2}', 	]);

$requestBody->setSourceIdType(new ExchangeIdFormat('restId'));

$requestBody->setTargetIdType(new ExchangeIdFormat('restImmutableEntryId'));



$result = $graphServiceClient->me()->translateExchangeIds()->post($requestBody);


```