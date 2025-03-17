---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\TranslateExchangeIds\TranslateExchangeIdsPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ExchangeIdFormat;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TranslateExchangeIdsPostRequestBody();
$requestBody->setInputIds(['{rest-formatted-id-1}', '{rest-formatted-id-2}', 	]);
$requestBody->setSourceIdType(new ExchangeIdFormat('restId'));
$requestBody->setTargetIdType(new ExchangeIdFormat('restImmutableEntryId'));

$result = $graphServiceClient->me()->translateExchangeIds()->post($requestBody)->wait();

```