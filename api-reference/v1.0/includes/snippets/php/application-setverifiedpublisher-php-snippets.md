---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SetVerifiedPublisherPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetVerifiedPublisherPostRequestBody();
$requestBody->setVerifiedPublisherId('1234567');

$graphServiceClient->applications()->byApplicationId('application-id')->setVerifiedPublisher()->post($requestBody)->wait();

```