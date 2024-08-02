---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Domains\Item\Verify\VerifyPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VerifyPostRequestBody();
$additionalData = [
	'forceTakeover' => true,
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->domains()->byDomainId('domain-id')->verify()->post($requestBody)->wait();

```