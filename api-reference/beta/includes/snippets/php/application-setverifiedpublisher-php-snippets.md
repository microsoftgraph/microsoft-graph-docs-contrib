---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Applications\Item\SetVerifiedPublisher\SetVerifiedPublisherPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetVerifiedPublisherPostRequestBody();
$requestBody->setVerifiedPublisherId('1234567');

$graphServiceClient->applications()->byApplicationId('application-id')->setVerifiedPublisher()->post($requestBody)->wait();

```