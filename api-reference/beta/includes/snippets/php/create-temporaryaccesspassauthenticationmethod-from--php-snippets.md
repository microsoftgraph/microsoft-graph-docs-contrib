---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TemporaryAccessPassAuthenticationMethod;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TemporaryAccessPassAuthenticationMethod();
$requestBody->setStartDateTime(new \DateTime('2022-06-05T00:00:00.000Z'));
$requestBody->setLifetimeInMinutes(60);
$requestBody->setIsUsableOnce(false);

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->temporaryAccessPassMethods()->post($requestBody)->wait();

```