---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Subscription();
$requestBody->setExpirationDateTime(new \DateTime('2016-03-22T11:00:00.0000000Z'));

$result = $graphServiceClient->subscriptions()->bySubscriptionId('subscription-id')->patch($requestBody)->wait();

```