---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonAnnualEvent();
$requestBody->setType(new PersonAnnualEventType('birthday'));
$requestBody->setDate(new Date('1980-01-08'));

$result = $graphServiceClient->me()->profile()->anniversaries()->post($requestBody)->wait();

```