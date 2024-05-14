---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\RemoveKeyPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RemoveKeyPostRequestBody();
$requestBody->setKeyId('f0b0b335-1d71-4883-8f98-567911bfdca6');
$requestBody->setProof('eyJ0eXAiOiJ...');

$graphServiceClient->applications()->byApplicationId('application-id')->removeKey()->post($requestBody)->wait();

```