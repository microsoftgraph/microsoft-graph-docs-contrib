---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$requestBody->setDisplayName('New display name');

$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody)->wait();

```