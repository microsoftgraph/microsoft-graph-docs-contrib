---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TranslateExchangeIdsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TranslateExchangeIdsPostRequestBody();
$requestBody->setInputIds(['{rest-formatted-id-1}', '{rest-formatted-id-2}', 	]);
$requestBody->setSourceIdType(new ExchangeIdFormat('restId'));
$requestBody->setTargetIdType(new ExchangeIdFormat('restImmutableEntryId'));

$result = $graphServiceClient->me()->translateExchangeIds()->post($requestBody)->wait();

```