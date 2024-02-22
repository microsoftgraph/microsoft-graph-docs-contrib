---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Calendar();
$requestBody->setName('Volunteer');

$result = $graphServiceClient->me()->calendars()->post($requestBody)->wait();

```