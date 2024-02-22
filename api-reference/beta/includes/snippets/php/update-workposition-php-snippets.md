---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkPosition();
$requestBody->setIsCurrent(true);

$result = $graphServiceClient->me()->profile()->positions()->byWorkPositionId('workPosition-id')->patch($requestBody)->wait();

```