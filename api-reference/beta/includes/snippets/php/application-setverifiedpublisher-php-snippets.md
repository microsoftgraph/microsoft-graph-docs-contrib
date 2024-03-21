---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetVerifiedPublisherPostRequestBody();
$requestBody->setVerifiedPublisherId('1234567');

$graphServiceClient->applications()->byApplicationId('application-id')->setVerifiedPublisher()->post($requestBody)->wait();

```