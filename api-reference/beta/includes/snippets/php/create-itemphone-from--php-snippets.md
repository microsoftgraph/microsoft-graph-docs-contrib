---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemPhone();
$requestBody->setDisplayName('Car Phone');
$requestBody->setNumber('+7 499 342 22 13');

$result = $graphServiceClient->me()->profile()->phones()->post($requestBody)->wait();

```