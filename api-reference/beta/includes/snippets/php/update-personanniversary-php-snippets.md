---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonAnnualEvent();
$requestBody->setAllowedAudiences(new AllowedAudiences('contacts'));

$result = $graphServiceClient->me()->profile()->anniversaries()->byPersonAnnualEventId('personAnnualEvent-id')->patch($requestBody)->wait();

```